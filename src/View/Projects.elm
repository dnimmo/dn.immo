module View.Projects exposing (..)

import Components exposing (channelHeading, date, externalLink, post)
import Content.Projects as Projects
import Element exposing (..)
import Element.Font as Font


slug : String
slug =
    "projects"


projectPost : Projects.ProjectContent -> Element msg
projectPost project =
    column
        [ height fill
        , width fill
        ]
        [ date project.date
        , post
            (project.name
                :: project.details
            )
          <|
            Just <|
                externalLink project.link
        ]


view : Element msg
view =
    column
        [ height fill
        , width fill
        ]
    <|
        List.concat
            [ [ channelHeading
                    { name = "Projects"
                    , description = "A collection of projects that I've worked on when the mood has taken me"
                    }
              ]
            , List.map projectPost Projects.content
            ]
