module Main exposing (main)

import Animations exposing (SlideState(..))
import Animator
import Browser exposing (UrlRequest(..))
import Browser.Navigation as Navigation
import Components exposing (globalStyles, mainLayout, menu)
import Element exposing (..)
import Element.Background as Background
import Html exposing (q)
import Html.Events exposing (onClick)
import Ports.Viewport exposing (viewportSizeChanged)
import Route exposing (Route(..), pushUrl)
import Time
import Url exposing (Url)
import View.Blogs as Blogs
import View.EmploymentHistory as EmploymentHistory exposing (State(..))
import View.Homepage as Homepage
import View.Projects as Projects
import View.Recommendations as Recommendations
import Viewport exposing (Viewport(..), ViewportDetails, classify)


type alias Model =
    { navKey : Navigation.Key
    , state : State
    , viewport : Viewport
    , threadState : Animator.Timeline SlideState
    }


type State
    = ViewingHomepage
    | ViewingEmploymentHistory EmploymentHistory.State
    | ViewingBlogs
    | ViewingProjects
    | ViewingRecommendations
    | Error String


type Msg
    = RuntimeTriggeredAnimationStep Time.Posix
    | ViewportChanged ViewportDetails
    | UrlChanged Url
    | UrlRequested Browser.UrlRequest
    | OpenThread EmploymentHistory.Thread
    | CloseThread


getStateFromUrl : Url -> Viewport -> State
getStateFromUrl url viewport =
    case Route.fromUrl url of
        Nothing ->
            Error <| "No page found for " ++ url.path

        Just route ->
            case route of
                General ->
                    ViewingHomepage

                EmploymentHistory ->
                    ViewingEmploymentHistory <| NotDisplayingThread viewport Nothing

                Blogs ->
                    ViewingBlogs

                Projects ->
                    ViewingProjects

                Recommendations ->
                    ViewingRecommendations


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        RuntimeTriggeredAnimationStep newTime ->
            ( Animator.update newTime animator model
            , Cmd.none
            )

        ViewportChanged details ->
            ( { model | viewport = classify details }
            , Cmd.none
            )

        UrlRequested (Internal url) ->
            ( { model
                | state = getStateFromUrl url model.viewport
              }
            , pushUrl model.navKey <|
                Maybe.withDefault General <|
                    Route.fromUrl url
            )

        UrlRequested (External url) ->
            ( model, Navigation.load url )

        OpenThread thread ->
            ( { model
                | state =
                    ViewingEmploymentHistory <|
                        DisplayingThread model.viewport thread
                , threadState =
                    Animator.go Animator.slowly Opening model.threadState
              }
            , Cmd.none
            )

        CloseThread ->
            let
                maybeThread =
                    case model.state of
                        ViewingEmploymentHistory (DisplayingThread viewport thread) ->
                            Just thread

                        _ ->
                            Nothing
            in
            ( { model
                | state = ViewingEmploymentHistory <| NotDisplayingThread model.viewport maybeThread
                , threadState =
                    Animator.go Animator.slowly Closed model.threadState
              }
            , Cmd.none
            )

        _ ->
            ( model, Cmd.none )


channelList : List String
channelList =
    [ "general"
    , "employment-history"
    , "blogs"
    , "projects"
    , "recommendations"
    ]


view : Model -> Browser.Document Msg
view model =
    { title = "Nimmo | Newcastle-based software engineer"
    , body =
        [ layout
            globalStyles
          <|
            mainLayout
                [ case model.viewport of
                    Narrow _ ->
                        none

                    Medium _ ->
                        menu
                            (case model.state of
                                Error _ ->
                                    ""

                                ViewingHomepage ->
                                    Homepage.slug

                                ViewingEmploymentHistory _ ->
                                    EmploymentHistory.slug

                                ViewingBlogs ->
                                    Blogs.slug

                                ViewingProjects ->
                                    Projects.slug

                                ViewingRecommendations ->
                                    Recommendations.slug
                            )
                            channelList
                , el
                    [ scrollbarY
                    , width fill
                    , height fill
                    ]
                  <|
                    case model.state of
                        Error message ->
                            el
                                [ centerX
                                , alignTop
                                , padding 40
                                ]
                            <|
                                text message

                        ViewingHomepage ->
                            Homepage.view

                        ViewingEmploymentHistory state ->
                            EmploymentHistory.view state
                                model.threadState
                                { openThreadMsg = OpenThread
                                , closeThreadMsg = CloseThread
                                }

                        ViewingBlogs ->
                            Blogs.view

                        ViewingProjects ->
                            Projects.view

                        ViewingRecommendations ->
                            Recommendations.view
                ]
        ]
    }


animator : Animator.Animator Model
animator =
    Animator.animator
        |> Animator.watchingWith
            .threadState
            (\updatedValue model ->
                { model | threadState = updatedValue }
            )
            (\threadState ->
                threadState == Opening
            )


init : ViewportDetails -> Url -> Navigation.Key -> ( Model, Cmd Msg )
init viewportDetails url key =
    let
        viewport =
            classify viewportDetails
    in
    ( { navKey = key
      , state = getStateFromUrl url viewport
      , viewport = viewport
      , threadState = Animator.init Closed
      }
    , Cmd.none
    )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.batch
        [ viewportSizeChanged ViewportChanged
        , Animator.toSubscription RuntimeTriggeredAnimationStep model animator
        ]


main =
    Browser.application
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        , onUrlChange = UrlChanged
        , onUrlRequest = UrlRequested
        }
