module Content.Blogs exposing (..)


type alias BlogContent =
    { date : String
    , post : List String
    , link :
        { url : String
        , label : String
        }
    }


content : List BlogContent
content =
    [ { date = "Dec 23rd, 2020"
      , post =
            [ "A video showing how the compiler helps you out whilst making code changes in Elm"
            ]
      , link =
            { url = "https://dev.to/nimmo/elm-a-short-example-of-the-development-experience-on-a-real-code-change-video-6m"
            , label = "A short example of the development experience on a real code change"
            }
      }
    , { date = "Dec 9th, 2019"
      , post =
            [ "Every Friday you can find people on Twitter shouting about how no-one should deploy on Friday, but is that really the case?"
            , "In this blog I suggest that deployments shouldn't be scary, and that avoiding deploying for 20% of your working week isn't something we should be encouraging."
            ]
      , link =
            { url = "https://dev.to/nimmo/deploy-every-friday-42b4"
            , label = "Deploy every Friday!"
            }
      }
    , { date = "Oct 11th, 2019"
      , post = [ "Accessibility is important for our users, but how often does it get forgotten? More than it should I expect. Fortunately, there are ways we can make it much harder to forget about in Elm!" ]
      , link = { url = "https://dev.to/nimmo/easier-paths-to-accessibility-in-elm-4ojo", label = "Easier paths to accessibility in Elm" }
      }
    , { date = "Feb 27th 2019"
      , post = [ "JavaScript is constantly changing, and often for the better. Optional chaining can really tidy up your code, and reduce cognitive load at the same time, so I thought I'd write about it, along with writing about how to add it to your JS projects today!" ]
      , link =
            { url = "https://dev.to/nimmo/optional-chaining-what-is-it-and-how-can-you-add-it-to-your-javascript-application-right-now-37ie"
            , label = "Optional chaining: What is it, and how can you add it to your JavaScript application right now?"
            }
      }
    , { date = "Feb 21st, 2019"
      , post = [ "Runtime exceptions are awful, but maybe sometimes failing loudly and obviously helps to prevent some harder-to-diagnose bugs." ]
      , link =
            { url = "https://dev.to/nimmo/sometimes-in-the-heat-of-the-moment-its-forgivable-to-cause-a-runtime-exception-2ko2"
            , label = "Sometimes, in the heat of the moment, it's forgiveable to cause a runtime exception"
            }
      }
    , { date = "Feb 19th, 2019"
      , post = [ "When you work remotely, you can feel like asking people things is \"bothering\" them, but I think it's important to get past that, and to understand that you aren't responsible for managing other people's time." ]
      , link =
            { url = "https://dev.to/nimmo/bothering-people-over-communication-tool-234l"
            , label = "Bothering people over [communication tool]"
            }
      }
    , { date = "Dec 22nd, 2018"
      , post =
            [ "There are few things that bother me more than the prhase \"Can't we just...?\", because the answer is invariably \"No\"."
            , "I believe that we should consider the words we choose carefully, because I believe that the words we choose generally end up influencing the way we think."
            ]
      , link =
            { url = "https://dev.to/clicktravelengorg/cant-we-just-56g"
            , label = "Can't we just...?"
            }
      }
    , { date = "Nov 19th, 2018"
      , post =
            [ "This is essentially a walk-through of an application that I built in Elm, so that people can see how it works and get a feel for how an Elm application might be put together."
            ]
      , link =
            { url = "https://dev.to/clicktravelengorg/a-look-at-a-small-elm-application-2loh"
            , label = "A look at a small Elm application"
            }
      }
    , { date = "Oct 20th, 2018"
      , post =
            [ "I absolutely love remote working; I genuinely believe that it is going to have a much bigger role for many of us in the future. But communication is something you need to be actively considering at all times to get the best out of it, in my opinion."
            ]
      , link =
            { url = "https://dev.to/nimmo/communication-is-hard-some-thoughts-on-one-aspect-of-remote-working-after-18-months-1f07"
            , label = "Communication is hard: Some thoughts on one aspect of remote working, after 18 months"
            }
      }
    , { date = "Jul 26th, 2018"
      , post =
            [ "Using arrays for everything in JavaScript is very easy to do, and because alternative data structures are less common in JS, it's easy to forget to consider the alternatives. But we should!"
            ]
      , link =
            { url = "https://dev.to/clicktravelengorg/js-performance-perhaps-we-shouldnt-always-use-arrays-38ce"
            , label = "JS Performance: Perhaps we shouldn't always use arrays"
            }
      }
    , { date = "Jul 20th, 2018"
      , post =
            [ "I'm a big fan of Elm, and I really wanted to give people an interesting example of an application that they could follow through and learn from, so I did!"
            ]
      , link =
            { url = "https://dev.to/clicktravelengorg/the-basic-elm-example-that-i-wish-id-had-40m8"
            , label = "The basic Elm example that I wish I'd had"
            }
      }
    , { date = "Jul 13th, 2018"
      , post =
            [ "My background has primarily been in JavaScript, and that has led me to being very wary of large files, and to think about code organisation very early on. With Elm, the cost of refactoring is very low, and it's worth taking that into account when you're starting a new Elm application."
            ]
      , link =
            { url = "https://dev.to/nimmo/dont-split-up-your-codebase-before-you-need-to-the-most-useful-elm-tip-that-i-shouldnt-have-ignored-3m96"
            , label = "Don't split up your codebase before you need to: The most useful Elm tip that I shouldn't have ignored"
            }
      }
    , { date = "May 7th, 2018"
      , post =
            [ "One of the best things my team at Click Travel ever did was work on a \"styleguide\", which essentially led us to having many discussions about our coding standards and preferences, and turned out to have a much greater impact on the team than we thought it would."
            ]
      , link =
            { url = "https://dev.to/clicktravelengorg/do-your-team-a-favour-start-writing-a-styleguide-glh"
            , label = "Do your team a favour: start writing a styleguide"
            }
      }
    , { date = "Feb 13th, 2018"
      , post =
            [ "I have talked about the idea of \"smallest-viewport first\" for a long time, and the language there is intentional. This is actually taken from something I posted on Slack, but copied and pasted into a blog post; I can go on a bit on Slack, as you'll see if you read this post!"
            ]
      , link =
            { url = "https://dev.to/nimmo/smallest-viewport-first--3cck"
            , label = "Smallest-viewport first"
            }
      }
    , { date = "Feb 4th, 2018"
      , post =
            [ "This is the third and final part in the 'State Driven Development' series. This part talks about managing more complex states through parallel state machines."
            ]
      , link =
            { url = "https://dev.to/nimmo/state-driven-development-for-user-interfaces-part-3-parallel-state-machines-2oja"
            , label = "State Driven Development for user interfaces (Part 3: Parallel State Machines)"
            }
      }
    , { date = "Feb 4th, 2018"
      , post =
            [ "This is the second part in the 'State Driven Development' series, which talks about Finite State Machines, and why you should think of your web application as one."
            ]
      , link =
            { url = "https://dev.to/nimmo/state-driven-development-for-user-interfaces-part-2-finite-state-machines-3hgc"
            , label = "State Driven Development for user interfaces (Part 2: Finite State Machines)"
            }
      }
    , { date = "Feb 4th, 2018"
      , post =
            [ "I spent a lot of time considering alternative approaches to front-end development, and that's when I started to really think about putting state management at the start of my development process, and I thought other people might find it useful."
            ]
      , link =
            { url = "https://dev.to/nimmo/state-driven-development-for-user-interfaces-part-1-an-introduction-27f1"
            , label = "State Driven Development for user interfaces (Part 1: An introduction)"
            }
      }
    , { date = "Dec 5th, 2017"
      , post =
            [ "After a production incident at work, I wrote a blog post about my thoughts on what what went well when it came to fixing it."
            ]
      , link =
            { url = "https://dev.to/nimmo/thats-fing-teamwork-61c"
            , label = "That's f***ing teamwork!"
            }
      }
    , { date = "Sep 17th, 2017"
      , post =
            [ "Anyone that has worked with me probably knows that I am very keen on pure functions, but I wrote this for...people that haven't worked with me I guess!"
            ]
      , link =
            { url = "https://dev.to/nimmo/pure-functions-and-why-i-like-them"
            , label = "Pure functions, and why I like them"
            }
      }
    , { date = "Feb 25th, 2017"
      , post =
            [ "I wrote this about my own approach to development, and what I spend time thinking about whenever I'm writing code."
            ]
      , link =
            { url = "https://dev.to/clicktravelengorg/thinking-of-the-next-developer"
            , label = "Thinking of the next developer"
            }
      }
    , { date = "Oct 26th, 2016"
      , post =
            [ "When I first heard about Elm, I dismissed it quite quickly, but then decided to give it a proper shot, and I don't mind admitting that I was wrong!"
            ]
      , link =
            { url = "https://dev.to/nimmo/i-was-wrong-to-dismiss-elm-and-i-think-you-probably-aretoo"
            , label = "I was wrong to dismiss Elm, and I think you probably are too"
            }
      }
    ]
