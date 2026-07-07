workspace "Viora - Software Architecture" "Landing Page Component Diagrams for Viora Platform" {

    !identifiers hierarchical

    model {
        // Personas
        visitor = person "Visitor" "Explores Viora's landing page, plans, testimonials and calls to action."
        producer = person "Olive Producer" "Monitors plots, receives alerts, requests technical interventions and manages subscription."
        specialist = person "Agricultural Specialist" "Publishes professional portfolio, receives cases, evaluates plots and manages interventions."

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
            }

            api = container "API Application" "REST API that handles authentication, plot management, agronomic monitoring, surveillance, interventions and billing." "ASP.NET Core" {
                tags "RoundedBox" "CodeSystem"
            }

            db = container "Database" "Stores users, plots, agronomic records, alerts, interventions, subscriptions." "MySQL" {
                tags "Container" "Database"
            }
            media = container "Media Storage" "Stores profile images and related media assets." "Cloudinary-backed media storage" {
                tags "Bucket"
            }
        }

        // Servicios externos
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


        // Relaciones de personas
        visitor    -> viora.landing  "Explores content and calls to action"
        producer   -> viora.webapp   "Uses"
        specialist -> viora.webapp   "Uses"

        // Relaciones internas de containers
        viora.landing -> viora.webapp  "Redirects authenticated users to"
        viora.webapp  -> viora.api     "Makes API requests to" "JSON/HTTPS"
        viora.api     -> viora.db      "Reads from and writes to" "ADO.NET"
        viora.api     -> viora.media   "Stores and retrieves media assets" "HTTPS/API"

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
        container viora "VioraContainer" {
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
