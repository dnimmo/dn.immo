module Main exposing (main)

import Browser exposing (UrlRequest(..))
import Browser.Navigation as Navigation
import Components exposing (globalStyles, mainLayout, menu)
import Element exposing (..)
import Element.Background as Background
import Html.Events exposing (onClick)
import Route exposing (Route(..), pushUrl)
import Url exposing (Url)
import View.Blogs as Blogs
import View.EmploymentHistory as EmploymentHistory
import View.Homepage as Homepage


type alias Model =
    { navKey : Navigation.Key
    , state : State
    }


type State
    = ViewingHomepage
    | ViewingEmploymentHistory
    | ViewingBlogs
    | Error String


type Msg
    = UrlChanged Url
    | UrlRequested Browser.UrlRequest


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
                    ViewingEmploymentHistory

                Blogs ->
                    ViewingBlogs

                _ ->
                    Error "Not done yet"


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
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


view : Model -> Browser.Document msg
view model =
    { title = "Nimmo | Newcastle-based software engineer"
    , body =
        [ layout
            globalStyles
          <|
            mainLayout
                [ menu False
                    (case model.state of
                        Error _ ->
                            ""

                        ViewingHomepage ->
                            Homepage.slug

                        ViewingEmploymentHistory ->
                            EmploymentHistory.slug

                        ViewingBlogs ->
                            Blogs.slug
                    )
                    channelList
                , case model.state of
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

                    ViewingEmploymentHistory ->
                        EmploymentHistory.view

                    ViewingBlogs ->
                        Blogs.view
                ]
        ]
    }


init : () -> Url -> Navigation.Key -> ( Model, Cmd Msg )
init _ url key =
    ( { navKey = key
      , state = getStateFromUrl url
      }
    , Cmd.none
    )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


main =
    Browser.application
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        , onUrlChange = UrlChanged
        , onUrlRequest = UrlRequested
        }