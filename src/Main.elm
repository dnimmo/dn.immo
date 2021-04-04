module Main exposing (main)

import Browser exposing (UrlRequest(..))
import Browser.Navigation as Navigation
import Components exposing (globalStyles, mainLayout, menu)
import Element exposing (..)
import Element.Background as Background
import Html.Events exposing (onClick)
import Ports.Viewport exposing (viewportSizeChanged)
import Route exposing (Route(..), pushUrl)
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
    }


type State
    = ViewingHomepage
    | ViewingEmploymentHistory EmploymentHistory.State
    | ViewingBlogs
    | ViewingProjects
    | ViewingRecommendations
    | Error String


type Msg
    = ViewportChanged ViewportDetails
    | UrlChanged Url
    | UrlRequested Browser.UrlRequest
    | OpenThread EmploymentHistory.Thread
    | CloseThread


getStateFromUrl : Url -> State
getStateFromUrl url =
    case Route.fromUrl url of
        Nothing ->
            Error <| "No page found for " ++ url.path

        Just route ->
            case route of
                General ->
                    ViewingHomepage

                EmploymentHistory ->
                    ViewingEmploymentHistory NotDisplayingThread

                Blogs ->
                    ViewingBlogs

                Projects ->
                    ViewingProjects

                Recommendations ->
                    ViewingRecommendations


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ViewportChanged details ->
            ( { model | viewport = classify details }
            , Cmd.none
            )

        UrlRequested (Internal url) ->
            ( { model
                | state = getStateFromUrl url
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
              }
            , Cmd.none
            )

        CloseThread ->
            ( { model
                | state = ViewingEmploymentHistory NotDisplayingThread
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


init : ViewportDetails -> Url -> Navigation.Key -> ( Model, Cmd Msg )
init viewportDetails url key =
    ( { navKey = key
      , state = getStateFromUrl url
      , viewport = classify viewportDetails
      }
    , Cmd.none
    )


subscriptions : Model -> Sub Msg
subscriptions model =
    viewportSizeChanged ViewportChanged


main =
    Browser.application
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        , onUrlChange = UrlChanged
        , onUrlRequest = UrlRequested
        }
