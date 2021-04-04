module Content.Recommendations exposing (..)


type alias RecommendationContent =
    { name : String
    , photo : String
    , comment : List String
    , link :
        { url : String
        , label : String
        }
    , date : String
    }


content : List RecommendationContent
content =
    [ { name = "Golnaz Sepehrband - Head of Engineering Enablement @ Click Travel"
      , photo = "golnaz.jpeg"
      , comment = [ "From the interview day, I realised David is an engineer who cares deeply about SW engineering processes and what approaches are used to solve problems. He is a pleasure to work with, at the same time he is someone who influences his team with his ideas, takes them onboard and leads them throughout the way. During his time at Click Travel, he took continuous improvement seriously and changed a lot of his team's internal processes. David has extensive knowledge and experience in front-end technologies, he is fully capable to explore various options for a given problem, propose a solution and execute it by himself." ]
      , link =
            { url = "https://www.linkedin.com/in/golnazsepehrband/"
            , label = "See Golnaz's profile"
            }
      , date = "Feb 9th, 2021"
      }
    , { name = "Lucie Pitcher - Information and Content Architect @ Department of Health and Social Care"
      , photo = "lucie.jpeg"
      , comment =
            [ "I'm not a developer, so I can't speak to Nimmo's coding skills (although his team clearly respect his abilities here). However, I can testify to the huge value he delivers to the wider team, beyond matters that are purely development related. He genuinely cares about the success of the project."
            , "He's interested in and contributes to aspects beyond just his immediate role, and is an active participant in strategic and design-related debates. He'll always fight to deliver the highest quality that he can, even when others are pushing for easier options.As a creative, I'd invite Nimmo to design meetings because he brought a fresh perspective that the rest of us didn't have.To top it off, he's just a bloody nice guy!"
            ]
      , link =
            { url = "https://www.linkedin.com/in/luciepitcher/"
            , label = "See Lucie's profile"
            }
      , date = "Oct 27th, 2020"
      }
    , { name = "Danny Clayden Chambers - UX Engineer @ MindGym"
      , photo = "danny.jpeg"
      , comment =
            [ "David Nimmo is a great Developer. I don’t say this lightly as it requires a balance of humility and technical skill which undoubtedly, Nimmo has. Speak with him and it is immediately clear - his enthusiasm is infectious and his commitment to his subject is second to none. Highly recommended."
            ]
      , link =
            { url = "https://www.linkedin.com/in/dannyclaydenchambers/"
            , label = "See Danny's profile"
            }
      , date = "Aug 10th, 2020"
      }
    , { name = "Vicki Williams - Director of Sales & Implementation @ Click Travel"
      , photo = "vicki.jpeg"
      , comment =
            [ "I would highly recommend David. Working with him on a high profile strategic customer project was a great experience all round. David really took the time to put himself in the customers shoes and as a result built a great fit solution which ticked every box. David’s positive energy and enthusiasm for supporting the wider business and getting stuck into new team projects has been a pleasure to see and I have thoroughly enjoyed our time working together and the fantastic results it has delivered."
            ]
      , link =
            { url = "https://www.linkedin.com/in/vicki-williams-5b621766/"
            , label = "See Vicki's profile"
            }
      , date = "Jun 24th, 2020"
      }
    , { name = "Tim Knight - Engineering Lead @ UKTV"
      , photo = "timmo.jpeg"
      , comment =
            [ "Myself and Nimmo worked on the same team for a year, and then within similar spheres at Click Travel.He introduced a set of best practices for Node.Js, which we still use, and have evolved alongside, at a time when the majority of our team were Java experts learning Node for the first time.He is a passionate developer, always looking at the best tool for any job, and is a pleasure to work with."
            ]
      , link =
            { url = "https://www.linkedin.com/in/knighttp/"
            , label = "See Tim's profile"
            }
      , date = "Jun 23rd, 2020"
      }
    , { name = "Anton Rand - Software Engineer @ Click Travel"
      , photo = "exploding_seagull.jpeg"
      , comment =
            [ "I would absolutely recommend Nimmo, It's been a pleasure working with him over the last few years."
            , "He helped ensure a smooth onboarding when I joined the team and was always available to help / offer any assistance - he is an easily approachable figure."
            , "From a technical perspective, Nimmo has an in-depth understanding of front-end technologies (Elm and React) and a genuine passion to make the development process enjoyable."
            , "Nimmo keeps himself well informed of the latest developments and shares any that are beneficial with the team - an example being to adopt an ECMA proposal that has significantly simplified our codebase."
            ]
      , link =
            { url = "https://www.linkedin.com/in/anton-rand/"
            , label = "See Anton's profile"
            }
      , date = "Jun 22nd, 2020"
      }
    , { name = "Robin Smith - Chief Product Engineer @ Click Travel"
      , photo = "robin_smith.jpeg"
      , comment =
            [ "Would i like to write a recommendation for David Nimmo? Yes, yes I would!"
            , "From working on our platform, developing mobile apps, PWA's and every other element of our system in between, Nimmo has been instrumental in guiding and implementing the technical direction of what we have worked on over the past 3 years."
            , "But its more than just technical expertise because you can see that from a CV or a linkedIn profile. I would recommend Nimmo for his ability to engage and work with a team, to spark a conversation, to think beyond the next x months, and encourage you and your business to take a leap out of your comfort zone."
            , "Essentially I would recommend David Nimmo"
            ]
      , link =
            { url = "https://www.linkedin.com/in/smith-robin/"
            , label = "See Robin's profile"
            }
      , date = "Jun 9th, 2020"
      }
    , { name = "Steffan Wescott - Senior Software Engineer @ Click Travel"
      , photo = "steffan_wescott.jpeg"
      , comment =
            [ "It was very clear when we hired Nimmo that we were blessed with a very special person. Nimmo cares deeply about his craft and his team. His impact significantly raised the quality of engineering and the effectiveness of everyone involved."
            , "Nimmo is a very skilled engineer with a deep understanding of front-end technologies, coupled with the drive to explore emerging techniques in this volatile field. He identified Elm as robust, productive alternative and has instigated an evolutionary transformation of a large browser based client from a legacy JavaScript codebase to a clearer, maintainable Elm application. He has the good sense that success is achieved as a team with a shared vision and understanding. He keenly attends to the engineering on-boarding process and always has time for others with any questions."
            , "Not only is Nimmo an accomplished visionary, he's also the most amiable person one could ever wish to work with. A true craftsperson to the core, he deserves to do well."
            ]
      , link =
            { url = "https://www.linkedin.com/in/steffanwestcott/"
            , label = "See Steffan's profile"
            }
      , date = "Jun 8th, 2020"
      }
    , { name = "Charlotte Neill - Software Engineer @ Click Travel"
      , photo = "charlotte_neill.jpeg"
      , comment =
            [ "Nimmo was the pioneer and driving force of a project to transform frontend development at Click, I was lucky enough to work in this team, led by Nimmo. As a team lead, Nimmo is helpful, patient, cheerful and just a pleasure to work with. He’s always happy to help, he cares about the health of the team, and I always felt led by Nimmo, rather than managed."
            , "Nimmo is a visionary, he has ideas and is very knowledgeable. He has transformed how we do things at Click from functional programming to using Elm for our frontend. Nimmo knows how to get things done and he knows how to share his knowledge effectively across an entire department of developers."
            ]
      , link =
            { url = "https://www.linkedin.com/in/charlotte-neill-b9495996/"
            , label = "See Charlotte's profile"
            }
      , date = "Jun 4th, 2020"
      }
    , { name = "Sarah Hale - Director of Engineering @ Unity Technologies"
      , photo = "sarah_hale.jpeg"
      , comment =
            [ "Nimmo was instrumental in transforming the front-end architecture at Click Travel, converting a legacy system that most engineers avoided into something to which they were excited to contribute. He actively sought input from the rest of the Product Engineering to ensure the system would be easy for others to pick up going forward, resulting in a much more readable and therefore maintainable solution."
            , "Nimmo is knowledgeable, articulate and a pleasure to work with."
            ]
      , link =
            { url = "https://www.linkedin.com/in/sarah-hale-08684143/"
            , label = "See Sarah's profile"
            }
      , date = "Apr 7th, 2020"
      }
    , { name = "Tajinder Singh - Solutions Architect @ Inspired Thinking Group"
      , photo = "taj_singh.jpeg"
      , comment =
            [ "I have worked with Nimmo on various projects. He was one of the first non-Java developers we hired at Click. He has had an impact on how projects were being coded."
            , "He has been of great help to me personally whenever I had questions as I was new to NodeJS. We worked on a PWA during a hack week away in a barn with other developers. It was great to learn from him. Even after leaving Click, I found myself scratching my head on an issue and called on Nimmo to help me out."
            , "He was very supportive, helped me diagnose the issue and I ended up learning a thing or two as usual from him. He is a great personality to have around as well. I would highly recommend Nimmo."
            ]
      , link =
            { url = "https://www.linkedin.com/in/tajindersinghd/"
            , label = "See Tajinder's profile"
            }
      , date = "Nov 8th, 2019"
      }
    , { name = "Todd Runham - Senior Software Engineer @ Gousto"
      , photo = "todd_runham.jpeg"
      , comment =
            [ "Working with Nimmo at Click Travel was truly a great experience and certainly something I'll miss. His comprehension of the modern front-end world and the direction it's going in or should be going in is second to none, and I genuinely feel that anyone who has the good fortune of working with him will be a much better developer because of it."
            , "As an engineer, Nimmo is both very technically able and very creative, meaning there aren't really any limits to what he can achieve. He has an enviable ability to convey meaning and insight in an incredibly clear and concise manner (something that is reflected in his code), and when paired with his intelligence and grasp of engineering practices, means you will not only get the highest quality software, but also the best out of the team building it."
            , "Nimmo is passionate and will always work tirelessly to improve the lives of people he works with. He understands the value of onboarding and will do everything he can to make other developers feel comfortable with whatever language or framework they are using."
            , "I loved my time with him both on a personal and an engineering level, and I wouldn't hesitate to work with him again."
            ]
      , link =
            { url = "https://www.linkedin.com/in/todd-runham-66b4b9114/"
            , label = "See Todd's profile"
            }
      , date = "Feb 6th, 2019"
      }
    , { name = "Andrew Hynes - Contributing Developer @ Kinaxis"
      , photo = "andrew_hynes.jpeg"
      , comment =
            [ "David is an extremely good programmer with a passion for doing things the right way. He was very obviously committed to his craft, and it showed in everything he did. He's determined to learn the best way of doing things and never scared of change, just doing things in the way that resulted in the highest quality on as many different metrics as he could measure."
            , "When I worked with him, I l saw first hand that he is very strong with functional programming, Elm, and Node.js, but David is the sort of individual who is tool-agnostic (and practice-agnostic) and I would trust to learn the best tool for any job, as well as the right practice for any job. Of course, he has also accrued a myriad skills I did not list and I'm sure will accrue many more as they fit the task at hand."
            , "As well as being a great engineer, he's a great person, and put effort into making everybody at the company was engaged and on board with the decisions that were being made and had the proper training and tutorship. It was clear that David would make sure that everybody was up to speed and nobody felt like things were moving around them instead of with them. He's very good at being a team player and understanding the personal needs of the teams and coworkers he works in."
            , "He was a very positive influence on the company in terms of ethos as well as code quality. I would love to work with him again and he would improve any team, so in that respect I highly recommend him to any potential employer."
            ]
      , link =
            { url = "https://www.linkedin.com/in/andrew-hynes-7b5653138/"
            , label = "See Andrew's profile"
            }
      , date = "Jun 12th, 2018"
      }
    , { name = "Ian Forster - Software Engineer Team Lead @ Sage UK"
      , photo = "ian_forster.jpeg"
      , comment =
            [ "David has a genuine passion for coding and he is always pushing himself to learn and improve. He sets the bar high in every project he works on and does all he can to coach his team mates. He knows what a good project looks like and will work with stakeholders to make sure everything he delivers is a success. If I was asked to put a new team together his would be the first name I wrote down."
            ]
      , link =
            { url = "https://www.linkedin.com/in/ian-forster/"
            , label = "See Ian's profile"
            }
      , date = "Apr 27th, 2017"
      }
    , { name = "Jamie Preston - Senior Sotware Engineer @ Click Travel"
      , photo = "jamie_preston.jpeg"
      , comment =
            [ "David and I worked together at the Department for Work and Pensions for around 8 months. David was in a senior position on the team when I first started at DWP and from day one he was excellent in this capacity. Coming into an existing team can be a daunting experience (especially for someone with a background in a different programming language) but from the outset he made me feel welcome and empowered. On day one he asked me to perform a code review on the existing codebase and although I was unfamiliar with the technoligies involved, he took my comments on board without ego and ensured that we acted upon them collaboratively as a team."
            , "It is obvious that David has very strong technical skills. During my time spent with him he was the team's best resource on NodeJS and associated technologies. He is passionate about web development and is always increasing his knowledge through personal projects and online learning. He introduced me to the principles of functional programming and has an obvious understanding of its correct usage and the benefits involved. He is eager to explore new languages and techniques, so much so that attempting to list all of the languages and tools he has knowledge of here would take a long time!"
            , "David would be an extremely valuable member of any team, through both his technical and non-technical skills. He has always been eager to help colleagues to progress their technical experience through recommendations of software development practice, thorough but pragmatic code reviews, and healthy debate amongst the team. He promotes the use of valuable software development practices such as peer reviews, agile development and pair programming. It's clear that he understands the benefits of these practises and knows how to best utilise them."
            , "Technical skills aside, David is a key member of any project team. He has a great personality; he is easy to get on with, approachable and willing to help. He is not afraid to voice an opinion if it's for the good of the project, even if he's in the minority. At the same time he is open to hearing opposing opinions and eager to reach a consensus as a team. David has strong leadership qualities and is looked up to by other team members. He is great at identifying and describing any concerns about a task to technical and non-technical people alike, and helps to steer a project, task, or meeting if it's getting off track."
            , "He has been a very positive influence on the team and myself personally during the time I've spent working with him. I would love to work with him again and would definitely recommend him to anyone considering hiring him."
            ]
      , link =
            { url = "https://www.linkedin.com/in/jamie-preston-783a5650/"
            , label = "See Jamie's profile"
            }
      , date = "Mar 30th, 2017"
      }
    , { name = "Nick Holvast - Software Engineer @ DWP"
      , photo = "nick_holvast.jpeg"
      , comment =
            [ "When I joined the DWP's Software Engineering department I had very little experience and very few transferable skills. At the time our team was only four strong, with only David and myself assigned to actual programming work, and we had a brand new project to begin."
            , "From the first day of that first project I was able to see David's commitment not only to conscientious software development, but also to imparting these values to those around him. He is an advocate of TDD, device-agnostic development and choosing the right technologies for the job, rather than blindly choosing tools he already knows. He is passionate about development and clearly has a deep understanding of both the key concepts and language specific nuances. He is usually the first member the team go to with any JavaScript queries or strange behaviour."
            , "He is committed to always improving and, again, improving those around him, and has recommended new technology to the team (always backed up with sound reason) and given talks on concepts such as functional programming."
            , "From a personal point of view David has hugely increased my knowledge of development in general, and JavaScript specifically, and I would highly recommend him."
            ]
      , link =
            { url = "https://www.linkedin.com/in/nick-holvast-ba7b8645/"
            , label = "See Nick's profile"
            }
      , date = "Mar 6th, 2017"
      }
    , { name = "Andy Hardy - Research Software Engineer @ Newcastle University"
      , photo = "empty-avatar-png.png"
      , comment =
            [ "I had the pleasure of working with David on an industry leading monitoring and reporting platform for the transportation sector. He quickly grasped a highly complex domain and began adding value from day one providing technical leadership on key issues of our Angular SPA such as architecture, scalability and security."
            , "He is a committed and enthusiastic technologist who provided key insights into the fast moving world of front end development. David also gave over a great deal of his time mentoring our junior developers and was the first port of call for any developer looking for the \"right\" way to do something on the front end."
            , "I would have no hesitation in working with David again and would highly recommend him to any company looking to employ him."
            ]
      , link =
            { url = "https://www.linkedin.com/in/andy-hardy-53544a10/"
            , label = "See Andy's profile"
            }
      , date = "Jan 9th, 2017"
      }
    , { name = "Andrew Charnley - Technical Architect (Consultant)"
      , photo = "andrew_charnley.jpeg"
      , comment =
            [ "I had the pleasure of working alongside David in a similar capacity while working at the DWP. It was evident from his thoughtful decision undertaking that he had considerable experience in the field. In addition his knowledge is current and he's happy to consider new tools and approaches. I wouldn't hesitate to recommend him."
            ]
      , link =
            { url = "https://www.linkedin.com/in/andrewcharnley/"
            , label = "See Andrew's profile"
            }
      , date = "Oct 28th, 2016"
      }
    ]
