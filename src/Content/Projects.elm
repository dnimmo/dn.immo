module Content.Projects exposing (..)


type alias ProjectContent =
    { name : String
    , details : List String
    , link :
        { url : String
        , label : String
        }
    , date : String
    }


content : List ProjectContent
content =
    [ { date = "Apr 4th, 2021"
      , details = [ "The site you're looking at right now. I've written this in a few different technologies now, but I decided that I'd rather maintain it in Elm than JavaScript, so re-wrote it again." ]
      , name = "My CV, in Elm"
      , link =
            { url = "https://github.com/dnimmo/dn.immo"
            , label = "dn.immo"
            }
      }
    , { date = "Dec 26th, 2020"
      , details = [ "I think retros are really important for building great teams, but running retros remotely always seemed to be a bit awkward. I decided to build my own application for them instead, and we've been successfully using it at MindGym for retros since." ]
      , name = "BestRetro.app"
      , link =
            { url = "https://bestretro.app/"
            , label = "BestRetro.app"
            }
      }
    , { date = "Jun 19th, 2020"
      , name = "Project Arklay, in Vue.js"
      , details =
            [ "I find it's useful to re-write an application I'm already familiar with when I'm looking to evaluate a new technology, since it helps me focus entirely on the technology being evaluated, rather than the thing I'm building."
            , "Project Arklay is a text-adventure game that I originally wrote to investigate Angular 1.0, and have since re-written multiple times. This example was written using Vue, and is the version that is currently live on projectarklay.com"
            ]
      , link =
            { url = "https://github.com/dnimmo/project-arklay-vue"
            , label = "Project Arklay: Vue"
            }
      }
    , { date = "May 26th, 2020"
      , name = "My CV, in Vue.js"
      , details =
            [ "The site you're looking at right now, but built with Vue.js"
            ]
      , link =
            { url = "https://github.com/dnimmo/dnimmo.info-vue"
            , label = "David Nimmo's CV site (Vue)"
            }
      }
    , { date = "May 13th, 2020"
      , name = "My CV, in React"
      , details =
            [ "The site you're looking at right now, but built with React"
            ]
      , link =
            { url = "https://github.com/dnimmo/loose-client"
            , label = "David Nimmo's CV site (React)"
            }
      }
    , { date = "May 11th, 2020"
      , name = "The server-side code for \"Project Arklay\", in TypeScript"
      , details =
            [ "After having written this application a number of times, I decided it was time to create an API for it! This is served through AWS' API Gateway, which calls AWS Lambda functions. This is the reason it exposes \"handler\" functions, as this is in line with AWS Lambda's specification."
            ]
      , link =
            { url = "https://github.com/dnimmo/arklay-server"
            , label = "Project Arklay: Server-side code."
            }
      }
    , { date = "May 11th, 2020"
      , name = "\"Project Arklay\", in React.js"
      , details =
            [ "I recreated this in order to evaluate whether I would still choose Elm over React in 2020. If you're interested in the answer, it's \"yes\", although I will happily admit that React has come a long way over the last couple of years, and this codebase ended up being a lot of fun to work on."
            ]
      , link =
            { url = "https://github.com/dnimmo/arklay-cv-client"
            , label = "Project Arklay: React + TypeScript"
            }
      }
    , { date = "Nov 18th, 2019"
      , name = "\"Project Arklay\", in Elm"
      , details =
            [ "My favourite project, written in my favourite programming language. If you've looked at the rest of my work you'll have seen this project a few times, but this version is still by far the most fun I've ever had on a project!"
            ]
      , link =
            { url = "https://github.com/dnimmo/project-arklay-v3"
            , label = "Project Arklay: Elm"
            }
      }
    , { date = "Oct 9th, 2018"
      , name = "State Machine Example, in Elm"
      , details =
            [ "This was an example of a small piece of functionality accompanying my short blog series \"State-driven development for user interfaces\", which demonstrated how much better you're able to think about your front-end codebase once you think about them as finite state machines rather than a collection of pages."
            ]
      , link =
            { url = "https://github.com/dnimmo/elm-state-machine-example"
            , label = "State machine example: Elm"
            }
      }
    , { date = "Jan 29th, 2018"
      , name = "State Machine Example, in React"
      , details =
            [ "The original React-based state machine example that is discussed in my short blog series \"State-driven development for user interfaces\""
            ]
      , link =
            { url = "https://github.com/dnimmo/state-machine-example"
            , label = "State machine example: React"
            }
      }
    ]
