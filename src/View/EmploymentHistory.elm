module View.EmploymentHistory exposing (..)

import Colours
import Components exposing (channelHeading, closeButton, date, edges, post, threadLink)
import Content.EmploymentHistory as EmploymentHistory exposing (EmploymentHistory)
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Viewport exposing (Viewport(..))


slug =
    "employment-history"


type alias Thread =
    { title : String
    , contents : List String
    }


type State
    = DisplayingThread Viewport Thread
    | NotDisplayingThread


employmentPost : (Thread -> msg) -> EmploymentHistory -> Element msg
employmentPost openThreadMsg item =
    column
        [ width fill
        , height fill
        ]
        [ date item.date
        , post item.post "Nimmo" <|
            Just <|
                threadLink <|
                    openThreadMsg
                        { title =
                            Maybe.withDefault "" <|
                                List.head
                                    item.post
                        , contents = item.threadContent
                        }
        ]


thread : msg -> Viewport -> Thread -> Element msg
thread closeMsg viewport { title, contents } =
    column
        [ height fill
        , Background.color Colours.white
        , alignRight
        , Border.widthEach { edges | left = 1 }
        , Border.color Colours.mediumGrey
        , Border.shadow
            { blur = 1000
            , color = Colours.shadow
            , offset = ( 0, 0 )
            , size = 1000
            }
        , case viewport of
            Narrow _ ->
                width fill

            Medium details ->
                width (fill |> maximum (details.width - 400))
        ]
        [ row [ width fill ]
            [ channelHeading
                { name = "Thread"
                , description = title
                }
            , el
                [ Border.widthEach { edges | bottom = 1 }
                , Border.color Colours.mediumGrey
                , height fill
                , width <| px 40
                ]
              <|
                closeButton closeMsg
            ]
        , post contents "Nimmo" Nothing
        ]


view :
    State
    ->
        { openThreadMsg :
            Thread
            -> msg
        , closeThreadMsg : msg
        }
    -> Element msg
view state { openThreadMsg, closeThreadMsg } =
    column
        [ height fill
        , width fill
        , inFront <|
            case state of
                NotDisplayingThread ->
                    none

                DisplayingThread viewport content ->
                    thread closeThreadMsg viewport content
        ]
    <|
        List.concat
            [ [ channelHeading
                    { name = "Employment History"
                    , description = "Information about my employment history. Details in threads."
                    }
              ]
            , List.map (employmentPost openThreadMsg) EmploymentHistory.content
            ]
