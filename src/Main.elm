module Main exposing (main)

import Browser
import Browser.Navigation as Navigation
import Components exposing (globalStyles, mainLayout, menu)
import Element exposing (..)
import Element.Background as Background
import Html.Events exposing (onClick)
import Url exposing (Url)
import View.Homepage as Homepage


type alias Model =
    { navKey : Navigation.Key
    , state : State
    }


type State
    = ViewingHomepage


type Msg
    = UrlChanged Url
    | UrlRequested Browser.UrlRequest


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )


view model =
    { title = "Nimmo | Newcastle-based software engineer"
    , body =
        [ layout
            globalStyles
          <|
            mainLayout
                [ menu
                , case model.state of
                    ViewingHomepage ->
                        Homepage.view
                ]
        ]
    }


init : () -> Url -> Navigation.Key -> ( Model, Cmd Msg )
init _ _ key =
    ( { navKey = key
      , state = ViewingHomepage
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
