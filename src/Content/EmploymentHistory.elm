module Content.EmploymentHistory exposing (..)


type alias EmploymentHistory =
    { date : String
    , post : List String
    , threadContent : List String
    }


content : List EmploymentHistory
content =
    [ { date = "Jun 2020 - Now"
      , post =
            [ "Full-stack engineer at MindGym"
            ]
      , threadContent =
            [ "As only the fourth software engineer at MindGym, I've been heavily involved in everything that comes with a new engineering department. I've been part of everything from platform architecture to hiring to choice of languages, as well as actually working on various projects." ]
      }
    , { date = "Apr 2019 - Jun 2020"
      , post =
            [ "Tech Lead at Click Travel - Front-End Architecture Team" ]
      , threadContent =
            [ "After deliberating over a number of tech choices (The front-runners being React, Vue, Clojurescript, and Elm), I ended up proposing Elm to the software engineering department, and got the go-ahead to introduce it. \n            \nSince then I’ve been leading the front-end team in implementing Elm, coming up with an on-boarding process, documenting our decisions, and supporting other engineers with the shift from React to Elm."
            ]
      }
    , { date = "Apr 2017 - Apr 2019"
      , post =
            [ "Senior Software Engineer at Click Travel - Pioneer Flights" ]
      , threadContent =
            [ "The Pioneer Flights team is responsible for aggregating flight information from a number of different carriers, and provides them through Click's own API in a consistent form for Click's client application: Travel.Cloud."
            , "When I first joined the team, our JavaScript codebase was entirely without automated tests, had no automated build pipeline, and was quite convoluted and incredibly difficult to maintain or extend."
            , "Shortly after joining the team, I set up automated pipelines for all of our projects, I introduced Functional Programming to both the team and the wider department, and introduced a set of coding standards for JavaScript (where none had existed before)"
            , "Over the course of around three months, I refactored our entire codebase in order to give us the ability to have sensible automated tests, and to reduce our recovery time from any live issues, as well as to make the codebase simpler to understand for any new starters we onboard in future."
            , "This was a tremendous success, and led to being able to engender regular and ongoing discussions about our coding standards within the team, which has seen the entire team constantly learn and improve."
            , "I also led a small team of engineers in the creation of a progressive web app to allow customers to access their travel itinerary, even when they don’t have internet access. This was delivered in a single \"hack week\"."
            , "Technologies used: ECMAScript 2015+, node.js, Jest, AWS, Bamboo, Elm, React, AngularJS, Webpack, SCSS, RWD, git, Jira, DDD"
            ]
      }
    , { date = "Jun 2016 - Apr 2017"
      , post =
            [ "Lead Software Engineer at Department For Work & Pensions" ]
      , threadContent =
            [ "I was recruited to work on a new application that was intended to replace a number of manual processes for ensuring that Winter Fuels payments are processed quickly and accurately each year."
            , "As lead developer on this application, I was responsible for making technology, architecture, and methodology choices, as well as writing code for the application."
            , "I introduced Docker for development and deployment (utilising Jenkins for continuous integration), and ensured that the team was doing Test-Driven Development, which I made myself available to advise on when necessary."
            , "I was also responsible for supporting and mentoring two less-experienced developers, a role that I have completed a few times over different organisations, and one that I thoroughly enjoy."
            , "The application featured an administration view, where users could interact directly with the application’s users/user access levels, and featured a number of interactive forms\n\n        \n            The user was required to select individual claims for Winter Fuels payments, and decide which claimants’ records are accurate and correct, and which one of them have potentially been duplicated thanks to errors when the information was first recorded."
            , "I also became a big fan of Functional Programming during this time, and developed the Winter Fuels Matching Service in this manner, which, combined with a completely modular structure, made the codebase incredibly easy to maintain, and ensured changes were very simple."
            , "In my short time at DWP, I had multiple requests from the Head of Software Engineering to join other projects to enable them to hit the ground running."
            , "Technologies used: ECMAScript 2015+, node.js, Docker, AngularJS, Webpack, SQL, SCSS, RWD, git, Jenkins, Karma, Mocha, Crucible, Jira"
            ]
      }
    , { date = "Jan 2016 - May 2016"
      , post =
            [ "Senior Applications Developer at Nomad Digital" ]
      , threadContent =
            [ "An overhaul of Nomad Digital’s current technology stack and working practices, in which they are moving from a combination of legacy systems, mostly written in Python and Java, to instead use open-source technologies."
            , "My responsibilities included aiding the introduction of BDD (behaviour-driven development) into the company, as well as providing support and training to the front-end web development team whilst developing the node.js back-end."
            , "After identifying inconsistencies in the existing codebase, I also took charge of simplifying the application’s code in order to ensure its future maintainability, by splitting it up into sensible modules."
            , "Technologies used: Java, AngularJS, node.js, Nginx, Docker, Kubernetes, gulp, SCSS, RWD, Git, Jenkins, Cucumber, Gherkin, Karma, Protractor, Crucible, Jira"
            ]
      }
    , { date = "Jan 2015 - Dec 2015"
      , post =
            [ "Technical Design Lead at British Airways - Core Engineering Team" ]
      , threadContent =
            [ "A massive greenfield project bringing British Airways’ web platform up to date with modern development practices and technologies, moving it away from an increasingly difficult-to-maintain legacy platform and creating an MVC architecture in its place. As one of a team of six Technical Design Leads, my responsibilities included:"
            , "Evaluating and selecting tools/technologies to be included in BA’s new development stack"
            , "Delivering standards and patterns for the use of selected tools/technologies"
            , "Supporting, and reviewing code from, five development teams totalling over 70 developers who are developing their first applications under the new architecture"
            , "Providing and maintaining Yeoman generators for new applications and libraries"
            , "Delivering a proof of concept application to act as a reference for how to implement the technologies the team is introducing"
            , "Creation and delivery of documentation and training material to ensure future maintainability of BA's codebase"
            , "Technologies used: AngularJS, node.js, gulp, SCSS, RWD, SVN, Jenkins, Jasmine, Karma, Protractor, Crucible, Jira"
            ]
      }
    , { date = "Mar 2013 - Dec 2014"
      , post =
            [ "Technical Design Lead at British Airways - Mobile ba.com" ]
      , threadContent =
            [ "Investigated, evaluated, and implemented solutions for dealing with key issues including device detection and image optimisation."
            , "Lead a team including contractors from three separate companies to deliver a fully responsive mobile booking system which now takes sales upwards of £20m per week."
            , "Delivered an additional proof of concept demonstrating the benefits of a mobile-first approach. This influenced senior stakeholders to re-evaluate their strategy and fund a total rebuild of the entire ba.com platform."
            , "Technologies used: JavaScript, SCSS, RWD, TeamSite, SVN, Jira"
            ]
      }
    , { date = "Mar 2012 - Mar 2013"
      , post =
            [ "Technical Design Lead at British Airways - ba.com (Information Site)" ]
      , threadContent =
            [ "The first project to be built in Interwoven's 'LiveSite' CMS, requiring standards to be set in its use, as well as investigation into its inner workings."
            , "Lead a team of contracted developers to deliver a website that allow BA’s editorial team to maintain using a simple drag-and-drop interface."
            , "Technologies used: jQuery, LiveSite, Java, SVN, Maven, SOLR"
            ]
      }
    , { date = "Jan 2012 - May 2012"
      , post =
            [ "Technical Design Lead at British Airways - One Destination" ]
      , threadContent =
            [ "This was BA's corporate responsibility website, detailing the many projects BA was involved in to protect the environment."
            , "Evaluated technologies for use on this site, designed its architecture, which saw this becoming the first cloud-based website British Airways had ever produced, being hosted on AWS; this has since become a staple for all BA microsites."
            , "I delivered a solution that included a content management system, complete with a custom workflow that allowed for moderation and approval of all content prior to publishing, with multiple levels of user privileges"
            , "I developed a training package alongside this, and delivered it to a team of 30 content editors, and a member of BA's board of directors. Additionally, delivered a 'user guides' microsite for the editorial team."
            , "Technologies used: PHP, jQuery, HTML5, CSS3, MySQL, AWS"
            ]
      }
    , { date = "Sep 2008 - Jan 2012"
      , post =
            [ "Software Engineer at British Airways - ba.com" ]
      , threadContent =
            [ "Software Engineer providing innovative solutions and technical consultancy for a web development team that consisted of developers in multiple locations, both in the UK and abroad."
            , "Duties included (not exhaustive): Carrying out code reviews, reviewing and approving technical solutions proposed by developers, analysis and production of technical requirements from business requirements, and development and delivery of complex content on the British Airways web portfolio"
            ]
      }
    ]
