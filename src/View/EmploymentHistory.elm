module View.EmploymentHistory exposing (..)

import Colours
import Components exposing (channelHeading, date, post, threadLink)
import Content.EmploymentHistory as EmploymentHistory exposing (EmploymentHistory)
import Element exposing (..)
import Element.Background as Background


slug =
    "employment-history"


type alias Thread =
    { title : String
    , contents : List String
    }


type State
    = DisplayingThread Thread
    | NotDisplayingThread


employmentPost : (Thread -> msg) -> EmploymentHistory -> Element msg
employmentPost openThreadMsg item =
    column
        [ width fill
        , height fill
        ]
        [ date item.date
        , post item.post <|
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


thread : Thread -> Element msg
thread { title, contents } =
    column
        [ height fill
        , width fill
        , Background.color Colours.white
        ]
        [ channelHeading
            { name = "Thread"
            , description = title
            }
        , post contents Nothing
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

                DisplayingThread content ->
                    thread content
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
