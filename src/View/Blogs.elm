module View.Blogs exposing (..)

import Components exposing (channelHeading, date, externalLink, post)
import Content.Blogs as Blogs exposing (BlogContent)
import Element exposing (..)


slug =
    "blogs"


blogPost : BlogContent -> Element msg
blogPost blog =
    column
        [ width fill
        , height fill
        ]
        [ date blog.date
        , post blog.post "Nimmo" <|
            Just <|
                externalLink blog.link
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
                    { name = "Blogs"
                    , description = "Sometimes I write things! You can find examples of those times below."
                    }
              ]
            , List.map blogPost Blogs.content
            ]
