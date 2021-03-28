module View.Homepage exposing (..)

import Components exposing (channelHeading, date, externalLink, post)
import Element exposing (..)


view =
    column
        [ height fill
        , width fill
        ]
        [ channelHeading
            { name = "General"
            , description = "Newcastle-based software engineer"
            }
        , date "Today"
        , column
            [ height fill
            , width fill
            ]
            [ post
                [ "I'm a software developer based in Newcastle Upon Tyne, England. I've got a wide range of experience in companies of varying sizes and cultures, and in roles of varying degrees of responsibility."
                , "I'm a big fan of functional programming, of good documentation, and of ensuring that your end users don't end up being frustrated by your software."
                , "I believe in picking the right tool for the job, and I believe that the criteria for \"right\" here isn't always rooted in technology or personal preference. If you ask me what my favourite programming language is, I'll be able to tell you. If you ask me what you should use for a particular task, you're likely to get a different answer depending on your situation."
                ]
                Nothing
            , post [ "On a personal note, I believe that teamwork is a skill that we can all improve upon. I believe in \"strong opinions, loosely held\", in being open to having my mind changed, and in accepting the parameters that are beyond my control in order to focus on those that are within it." ] <|
                Just <|
                    externalLink
                        { label = "Feel free to connect with me on LinkedIn"
                        , url = "https://www.linkedin.com/in/david-nimmo-89568666/"
                        }
            , post [ "If you'd like to see various bits and pieces I've done over the years, feel free to have a look:" ] <|
                Just <|
                    externalLink
                        { label = "My GitHub profile"
                        , url = "https://github.com/dnimmo"
                        }
            , post [ "I also sporadically take pictures that all basically look the same." ] <|
                Just <|
                    externalLink
                        { label = "Pictures of things really close up on Instagram"
                        , url = "https://www.instagram.com/nimmo_pics/"
                        }
            ]
        ]
