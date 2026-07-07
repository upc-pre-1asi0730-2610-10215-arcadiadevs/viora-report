workspace "Viora - Software Architecture" "System Context and Container Diagrams for Viora Platform" {

    !identifiers hierarchical

    model {
        // Aqui definimos a las personas
        visitor = person "Visitor" "Explores Viora's landing page, plans, testimonials and calls to action."
        producer = person "Olive Producer" "Monitors plots, receives alerts, requests technical interventions and manages subscription."
        specialist = person "Agricultural Specialist" "Publishes professional portfolio, receives cases, evaluates plots and manages interventions."

        // Aqui se hace el zoom hacia el siguiente diagrama de contenedores
        viora = softwareSystem "Viora Platform" "Web platform for olive crop monitoring, phytosanitary risk management, technical service coordination and subscription management." {
            tags "CoreSystem"

            landing = container "Landing Page" "Static website that presents Viora's value proposition, plans, testimonials and calls to action." "HTML5, CSS3, JavaScript" {
                tags "Browser"
            
                header = component "Landing Header Component" "Manages the Liquid Glass navigation bar, language selector, and audio toggle." "JavaScript ES Module" {
                    tags "Component"
                }
                hero = component "Hero Section Component" "Presents the core value proposition and magnetic call-to-action buttons." "JavaScript ES Module" {
                    tags "Component"
                }
                problem = component "Problem Panel Component" "Displays the main agronomic and climatic challenges of olive production using interactive cards." "JavaScript ES Module" {
                    tags "Component"
                }
                solution = component "Problem & Solution Section Component" "Orchestrates the transition from problem awareness to solutions via video panels and draggable carousels." "JavaScript ES Module" {
                    tags "Component"
                }
                benefits = component "Role Benefits Section Component" "Manages the role switcher and segment benefits for producers and agricultural specialists." "JavaScript ES Module" {
                    tags "Component"
                }
                pricing = component "Pricing & Affiliates Component" "Presents subscription plans, billing interval switcher, and referral program carousel." "JavaScript ES Module" {
                    tags "Component"
                }
                team = component "About & Team Component" "Displays the ArcadiaDevs team mission statement, card stack, and floating inspiration bubbles." "JavaScript ES Module" {
                    tags "Component"
                }
                footer = component "Footer Section Component" "Handles footer navigation, newsletter registration, and Matter.js physics-based badges." "JavaScript ES Module" {
                    tags "Component"
                }
                button = component "Landing Button Component" "Shared UI primitive that provides magnetic and audio hover feedback on landing buttons." "JavaScript ES Module" {
                    tags "Component"
                }
                sound = component "Sound Manager Service" "Coordinates background ambient audio, hover sound triggers, and sound toggles." "JavaScript ES Module" {
                    tags "Component"
                }
                i18n = component "Internationalization Service" "Loads JSON translations and dynamically swaps text content between English and Spanish." "JavaScript ES Module / JSON" {
                    tags "Component"
                }
                effects = component "Interaction Effects Module" "Provides scroll smoothing (Lenis), magnetic animations, parallax, and infinite marquees." "JavaScript ES Module / GSAP / Lenis" {
                    tags "Component"
                }
            }

            webapp = container "Web Application" "Single-page application used by olive producers and agricultural specialists to manage plots, alerts, interventions and subscriptions." "Vue.js" {
                tags "Browser"

                iamModule = component "IAM Module" "Provides views and components for user login, signup, password recovery, and active session store (Pinia)." "Vue.js Module" {
                    tags "Component"
                }
                profileModule = component "Profile Module" "Allows producers and specialists to view and update their bios, avatar, and contact profiles." "Vue.js Module" {
                    tags "Component"
                }
                agronomicModule = component "Agronomic Module" "Provides views for plot registration, crop type setting, satellite monitoring, IoT device settings, and agronomic statistics." "Vue.js Module" {
                    tags "Component"
                }
                surveillanceModule = component "Surveillance Module" "Provides views for pest sighting report filing, symptom history tracking, and active preventive warnings." "Vue.js Module" {
                    tags "Component"
                }
                interventionModule = component "Intervention Module" "Coordinates views for searching specialists, sending proposals, tracking intervention execution, and managing treatment prescriptions." "Vue.js Module" {
                    tags "Component"
                }
                billingModule = component "Billing Module" "Manages pricing plan selectors, subscription details, payment records, checkout widgets, and referral program views." "Vue.js Module" {
                    tags "Component"
                }
                supportModule = component "Support Module" "Displays client support dashboards, frequently asked questions (FAQs), and ticket management components." "Vue.js Module" {
                    tags "Component"
                }
                router = component "Router & Guards" "Manages single-page app routes, transitions, and state-based navigation guards." "Vue Router" {
                    tags "Component"
                }
                sharedPresentation = component "Shared Presentation Components" "Provides layouts, main workspace wrappers, navigation sidebars, common buttons, and layout primitives." "Vue.js Components" {
                    tags "Component"
                }
                sharedInfrastructure = component "Shared Infrastructure Components" "Encapsulates Axios API base endpoint configurations, Mapbox services, interceptors, and active session context." "JavaScript / Axios" {
                    tags "Component"
                }
            }

            api = container "API Application" "REST API that handles authentication, plot management, agronomic monitoring, surveillance, interventions and billing." "ASP.NET Core" {
                tags "RoundedBox" "CodeSystem"

                iamContext = component "IAM Bounded Context" "Handles user authentication, JWT sessions, role management, and access controls." "ASP.NET Core / Identity" {
                    tags "Component"
                }
                profileContext = component "Profile Bounded Context" "Manages details of olive growers and agricultural specialists." "ASP.NET Core Service" {
                    tags "Component"
                }
                agronomicContext = component "Agronomic Bounded Context" "Registers productive areas, processes IoT device streams, calculates dynamic nutrition plans, and compiles agronomic stats." "ASP.NET Core Service" {
                    tags "Component"
                }
                surveillanceContext = component "Surveillance Bounded Context" "Handles pest sighting reports, symptom definitions, and publishes phytosanitary or community risk alerts." "ASP.NET Core Service" {
                    tags "Component"
                }
                interventionContext = component "Intervention Bounded Context" "Coordinates service proposals, matching producers with specialists, intervention tracking, and treatment prescriptions." "ASP.NET Core Service" {
                    tags "Component"
                }
                billingContext = component "Billing Bounded Context" "Manages subscription plans, Mercado Pago checkout flow, and the referral/affiliate coupon program." "ASP.NET Core Service" {
                    tags "Component"
                }
                sharedKernel = component "Shared Kernel" "Provides shared base classes, transactional pipeline behaviors, and global filters." "C# Shared Module" {
                    tags "Component"
                }
                repositories = component "Repository Components" "Persist and retrieve domain data from the relational database." "Entity Framework Core" {
                    tags "Component"
                }
            }

            db = container "Database" "Stores users, plots, agronomic records, alerts, interventions, subscriptions." "MySQL" {
                tags "Container" "Database"
            }

            media = container "Media Storage" "Stores profile images and related media assets." "Cloudinary-backed media storage" {
                tags "Bucket"
            }
        }

        // Aqui, para el diagrama de contexto, se define los servicios externos
        agromonitoring = softwareSystem "AgroMonitoring API" "External provider of satellite imagery, vegetation indices and agro-weather data." {
            tags "ExternalSystem"
        }

        mercadopago = softwareSystem "Mercado Pago" "External payment gateway for subscriptions, renewals, refunds and payment status updates." {
            tags "ExternalSystem"
        }

        brevo = softwareSystem "Brevo" "Transactional email service for password recovery and account notifications." {
            tags "ExternalSystem"
        }

        mapbox = softwareSystem "Mapbox" "Maps and geocoding service used for plot delimitation and location-based features." {
            tags "ExternalSystem"
        }

        cloudinary = softwareSystem "Cloudinary" "Cloud media storage and delivery service for profile images." {
            tags "ExternalSystem"
        }



        // Relaciones de System Context 
        visitor  -> viora "Explores the landing page, plans and value proposition"
        producer -> viora "Monitors plots, receives alerts, requests services and manages subscription"
        specialist -> viora "Publishes portfolio, receives alerts, evaluates cases and manages interventions"

        viora -> agromonitoring "Retrieves satellite imagery, vegetation indices and agro-weather data"
        viora -> mercadopago "Processes subscriptions, payments, renewals and refunds"
        viora -> brevo "Sends password recovery and transactional email notifications"
        viora -> mapbox "Uses maps and geocoding for plot delimitation and location services"
        viora -> cloudinary "Stores and delivers profile images"


        // Relaciones internas de Container
        visitor    -> viora.landing "Explores content and calls to action"
        producer   -> viora.webapp  "Uses"
        specialist -> viora.webapp  "Uses"

        viora.landing -> viora.webapp "Redirects authenticated users to"
        viora.webapp  -> viora.api   "Makes API requests to" "JSON/HTTPS"
        viora.api     -> viora.db    "Reads from and writes to" "ADO.NET"
        viora.api     -> viora.media "Stores and retrieves media assets" "HTTPS/API"

        viora.api -> agromonitoring "Retrieves satellite imagery, vegetation indices and agro-weather data" "HTTPS/JSON"
        viora.api -> mercadopago    "Processes subscriptions, renewals and refunds" "HTTPS/JSON + Webhooks"
        viora.api -> brevo          "Sends password recovery and transactional emails" "HTTPS/API"
        viora.api -> mapbox         "Uses maps and geocoding services" "HTTPS/JSON"
        viora.api -> cloudinary     "Uploads and delivers profile media" "HTTPS/API"

        
        // Relaciones de los componentes
        viora.webapp.sharedInfrastructure -> viora.api.iamContext          "Makes API calls to" "JSON/HTTPS"
        viora.webapp.sharedInfrastructure -> viora.api.profileContext      "Makes API calls to" "JSON/HTTPS"
        viora.webapp.sharedInfrastructure -> viora.api.agronomicContext    "Makes API calls to" "JSON/HTTPS"
        viora.webapp.sharedInfrastructure -> viora.api.surveillanceContext "Makes API calls to" "JSON/HTTPS"
        viora.webapp.sharedInfrastructure -> viora.api.interventionContext "Makes API calls to" "JSON/HTTPS"
        viora.webapp.sharedInfrastructure -> viora.api.billingContext      "Makes API calls to" "JSON/HTTPS"

        viora.webapp.sharedInfrastructure -> mapbox "Consumes mapping and geocoding services from" "HTTPS/JSON"

        viora.api.repositories -> viora.db "Persists and retrieves relational domain data" "ADO.NET"
        viora.api.repositories -> viora.media "Stores media references and asset metadata" "HTTPS/API"

        viora.media -> cloudinary "Delegates profile media storage and delivery" "HTTPS/API"
        
        // Relaciones de Web Application Components
        producer   -> viora.webapp.iamModule          "Signs in, registers and recovers account"
        specialist -> viora.webapp.iamModule          "Signs in, registers and recovers account"

        producer   -> viora.webapp.profileModule      "Updates producer profile"
        specialist -> viora.webapp.profileModule      "Updates specialist profile"

        producer   -> viora.webapp.agronomicModule    "Registers plots, monitors satellite data and sets crop properties"
        specialist -> viora.webapp.agronomicModule    "Monitors plot details and crop data for assigned cases"

        producer   -> viora.webapp.surveillanceModule "Files pest sighting reports and views risk warnings"
        specialist -> viora.webapp.surveillanceModule "Monitors regional warnings and pest sightings"

        producer   -> viora.webapp.interventionModule "Searches specialists, accepts proposals, and views prescriptions"
        specialist -> viora.webapp.interventionModule "Submits proposals, tracks milestone progress, and writes prescriptions"

        producer   -> viora.webapp.billingModule      "Chooses plans, manages trial/subscription, and views invoices"
        producer   -> viora.webapp.supportModule      "Reads FAQs and requests customer support"
        specialist -> viora.webapp.supportModule      "Reads FAQs and requests customer support"

        viora.landing -> viora.webapp.router          "Redirects authenticated users to"

        viora.webapp.router -> viora.webapp.iamModule          "Routes and checks guard authorizations for"
        viora.webapp.router -> viora.webapp.profileModule      "Routes and checks guard authorizations for"
        viora.webapp.router -> viora.webapp.agronomicModule    "Routes and checks guard authorizations for"
        viora.webapp.router -> viora.webapp.surveillanceModule "Routes and checks guard authorizations for"
        viora.webapp.router -> viora.webapp.interventionModule "Routes and checks guard authorizations for"
        viora.webapp.router -> viora.webapp.billingModule      "Routes and checks guard authorizations for"
        viora.webapp.router -> viora.webapp.supportModule      "Routes and checks guard authorizations for"

        // Dependencias de presentación e infraestructura compartida
        viora.webapp.iamModule          -> viora.webapp.sharedPresentation "Uses layout and presentation primitives"
        viora.webapp.profileModule      -> viora.webapp.sharedPresentation "Uses layout and presentation primitives"
        viora.webapp.agronomicModule    -> viora.webapp.sharedPresentation "Uses layout and presentation primitives"
        viora.webapp.surveillanceModule -> viora.webapp.sharedPresentation "Uses layout and presentation primitives"
        viora.webapp.interventionModule -> viora.webapp.sharedPresentation "Uses layout and presentation primitives"
        viora.webapp.billingModule      -> viora.webapp.sharedPresentation "Uses layout and presentation primitives"
        viora.webapp.supportModule      -> viora.webapp.sharedPresentation "Uses layout and presentation primitives"

        viora.webapp.iamModule          -> viora.webapp.sharedInfrastructure "Makes API requests through"
        viora.webapp.profileModule      -> viora.webapp.sharedInfrastructure "Makes API requests through"
        viora.webapp.agronomicModule    -> viora.webapp.sharedInfrastructure "Makes API requests through"
        viora.webapp.surveillanceModule -> viora.webapp.sharedInfrastructure "Makes API requests through"
        viora.webapp.interventionModule -> viora.webapp.sharedInfrastructure "Makes API requests through"
        viora.webapp.billingModule      -> viora.webapp.sharedInfrastructure "Makes API requests through"
        viora.webapp.supportModule      -> viora.webapp.sharedInfrastructure "Makes API requests through"
     
        // Relaciones de Landing Page Components
        visitor -> viora.landing.header  "Interacts with navigation, language selector, and audio toggle"
        visitor -> viora.landing.hero    "Views primary value proposition and clicks CTAs"
        visitor -> viora.landing.problem "Explores agricultural challenges"
        visitor -> viora.landing.solution "Explores solutions and outcomes"
        visitor -> viora.landing.benefits "Explores benefits by role"
        visitor -> viora.landing.pricing "Reviews pricing options and referral benefits"
        visitor -> viora.landing.team    "Reviews team and mission"
        visitor -> viora.landing.footer  "Subscribes to newsletter and plays with badges"

        // Relaciones internas de componentes de Landing
        viora.landing.header -> viora.landing.sound "Toggles ambient audio"
        viora.landing.header -> viora.landing.i18n  "Swaps language key"

        viora.landing.header   -> viora.landing.button "Uses button widgets"
        viora.landing.hero     -> viora.landing.button "Uses button widgets"
        viora.landing.problem  -> viora.landing.button "Uses button widgets"
        viora.landing.solution -> viora.landing.button "Uses button widgets"
        viora.landing.benefits -> viora.landing.button "Uses button widgets"
        viora.landing.pricing  -> viora.landing.button "Uses button widgets"
        viora.landing.team     -> viora.landing.button "Uses button widgets"
        viora.landing.footer   -> viora.landing.button "Uses button widgets"

        viora.landing.button -> viora.landing.sound "Triggers hover sound effect"
        viora.landing.button -> viora.landing.effects "Uses magnetic effect"

        viora.landing.header   -> viora.landing.effects "Uses scroll effects"
        viora.landing.hero     -> viora.landing.effects "Uses parallax and slide effects"
        viora.landing.problem  -> viora.landing.effects "Uses accordion scroll effects"
        viora.landing.solution -> viora.landing.effects "Uses carousel drag and video scale effects"
        viora.landing.benefits -> viora.landing.effects "Uses switcher slide effects"
        viora.landing.pricing  -> viora.landing.effects "Uses toggle slide and carousel effects"
        viora.landing.team     -> viora.landing.effects "Uses bubble float and parallax effects"
        viora.landing.footer   -> viora.landing.effects "Uses Matter.js physics engine"

        viora.landing.header   -> viora.landing.i18n "Translates text"
        viora.landing.hero     -> viora.landing.i18n "Translates text"
        viora.landing.problem  -> viora.landing.i18n "Translates text"
        viora.landing.solution -> viora.landing.i18n "Translates text"
        viora.landing.benefits -> viora.landing.i18n "Translates text"
        viora.landing.pricing  -> viora.landing.i18n "Translates text"
        viora.landing.team     -> viora.landing.i18n "Translates text"
        viora.landing.footer   -> viora.landing.i18n "Translates text"

        // Redirecciones a la aplicación web
        viora.landing.header   -> viora.webapp "Redirects to sign in/up"
        viora.landing.hero     -> viora.webapp "Redirects to sign in/up/trial"
        viora.landing.pricing  -> viora.webapp "Redirects to signup with plan select"
        viora.landing.footer   -> viora.webapp "Redirects to sign in/up"
        
    }

    views {
        systemContext viora "VioraSystemContext" {
            include *
            autoLayout tb 200 150
        }

        container viora "VioraContainer" {
            include *
            
        }
        component viora.api "VioraApiComponents" {
            include *
            include viora.db
            include viora.media
        }
        
        component viora.webapp "VioraWebAppComponents" {
            include *

        }
        
        component viora.landing "VioraLandingComponents" {
            include *
            include visitor
            include viora.webapp
            
        }
        

        styles {
            element "Element" {
                background #ffffff
                shape roundedbox
            }

            element "Person" {
                color #55aa55
                stroke #55aa55
                strokeWidth 7
                shape person
                background #ffffff
            }

            element "Software System" {
                color #1168bd
                stroke #1168bd
                strokeWidth 7
                background #ffffff
            }

            element "Container" {
                color #1168bd
                stroke #1168bd
                strokeWidth 7
                background #ffffff
            }
            
             element "RoundedBox" {
                color #1168bd
                stroke #1168bd
                strokeWidth 7
                background #ffffff
            }
            
             element "Browser" {
                color #1168bd
                stroke #1168bd
                strokeWidth 7
                background #ffffff
                shape WebBrowser
            }

            element "CoreSystem" {
                color #1168bd
                stroke #1168bd
                strokeWidth 7
                background #ffffff
            }

            element "ExternalSystem" {
                color #bf101d
                stroke #bf101d
                strokeWidth 7
                background #ffffff
            }

            element "Database" {
                color #1168bd
                stroke #1168bd
                strokeWidth 7
                background #ffffff
                shape cylinder
            }
            
             element "Bucket" {
                color #1168bd
                stroke #1168bd
                strokeWidth 7
                background #ffffff
                shape Bucket
            }
            
            element "Component" {
                color #1168bd
                stroke #1168bd
                strokeWidth 7
                background #ffffff
                shape Component
            }

            relationship "Relationship" {
                color #4a4a4a
                thickness 3
                dashed true
            }
        }
    }

    configuration {
        scope softwaresystem
    }
}