workspace "Viora - Software Architecture" "Landing Page Component Diagrams for Viora Platform" {

    !identifiers hierarchical

    model {
        // Personas
        visitor = person "Visitor" "Explores Viora's landing page, plans, testimonials and calls to action."
        producer = person "Olive Producer" "Monitors plots, receives alerts, requests technical interventions and manages subscription."
        specialist = person "Agricultural Specialist" "Publishes professional portfolio, receives cases, evaluates plots and manages interventions."

        viora = softwareSystem "Viora Platform" "Web platform for olive crop monitoring, phytosanitary risk management, technical service coordination and subscription management." {
            tags "CoreSystem"

            landing = container "Landing Page" "Static website that presents Viora's value proposition, plans, testimonials and calls to action." "Vue.js" {
                tags "Browser"

                hero = component "Hero Section Component" "Presents the core value proposition, segmented CTA and primary conversion actions." "Vue.js Component" {
                    tags "Component"
                }
                problem = component "Problem & Solution Section Component" "Explains the climatic and phytosanitary problem and Viora's proposed solution." "Vue.js Component" {
                    tags "Component"
                }
                roles = component "Role Benefits Section Component" "Shows segmented benefits for olive producers and agricultural specialists." "Vue.js Component" {
                    tags "Component"
                }
                plans = component "Plans, Trial & Affiliates Section Component" "Presents pricing plans, free trial and affiliate/referral program." "Vue.js Component" {
                    tags "Component"
                }
                trust = component "Testimonials & About Section Component" "Presents testimonials, team information and trust-building content." "Vue.js Component" {
                    tags "Component"
                }
                contact = component "Contact & Footer Section Component" "Presents contact data, legal links, navigation links and footer content." "Vue.js Component" {
                    tags "Component"
                }
                cta = component "CTA Routing Component" "Handles navigation from landing CTAs toward sign in, sign up and trial flows in the Web Application." "Vue Router / Navigation Service" {
                    tags "Component"
                }
                landingshared = component "Shared Landing UI Components" "Reusable buttons, cards, badges, section headers and layout primitives for the landing page." "Vue.js Shared Components" {
                    tags "Component"
                }
                contentmodels = component "Landing Content Models" "Defines models for hero content, benefits, plans, testimonials, FAQ and CTA content." "TypeScript Models / Interfaces" {
                    tags "Component"
                }
                assembler = component "Landing ViewModel Assembler" "Builds section view models from static content/models for presentation components." "TypeScript Assembler" {
                    tags "Component"
                }
            }

            webapp = container "Web Application" "Single-page application used by olive producers and agricultural specialists to manage plots, alerts, interventions and subscriptions." "Vue.js" {
                tags "Browser"
            }

            api = container "API Application" "REST API that handles authentication, plot management, agronomic monitoring, alerts, marketplace workflows, moderation and subscriptions." "ASP.NET Core" {
                tags "RoundedBox" "CodeSystem"
            }

            db = container "Database" "Stores users, plots, agronomic records, alerts, interventions, subscriptions and moderation data." "MySQL" {
                tags "Container" "Database"
            }
            media = container "Media Storage" "Stores field evidence images, profile images and related media assets." "Cloudinary-backed media storage" {
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
        cloudinary = softwareSystem "Cloudinary" "Cloud media storage and delivery service for profile images and field evidence." {
            tags "ExternalSystem"
        }
        senasa = softwareSystem "SENASA Official/Open Data Source" "Official phytosanitary information source used as institutional reference for alerts, regulations and sanitary context." {
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
        visitor -> viora.landing.hero    "Views the primary value proposition and CTA"
        visitor -> viora.landing.roles   "Explores role-specific benefits"
        visitor -> viora.landing.plans   "Reviews plans, free trial and affiliate program"
        visitor -> viora.landing.trust   "Reviews testimonials and team information"
        visitor -> viora.landing.contact "Reviews contact, footer and legal links"

        viora.landing.hero    -> viora.landing.landingshared "Uses reusable hero and CTA UI"
        viora.landing.problem -> viora.landing.landingshared "Uses reusable layout and content blocks"
        viora.landing.roles   -> viora.landing.landingshared "Uses reusable cards and section blocks"
        viora.landing.plans   -> viora.landing.landingshared "Uses reusable pricing and CTA widgets"
        viora.landing.trust   -> viora.landing.landingshared "Uses reusable testimonial and team widgets"
        viora.landing.contact -> viora.landing.landingshared "Uses reusable footer and link widgets"

        viora.landing.hero    -> viora.landing.assembler "Consumes hero view model from"
        viora.landing.problem -> viora.landing.assembler "Consumes problem/solution view model from"
        viora.landing.roles   -> viora.landing.assembler "Consumes benefits view model from"
        viora.landing.plans   -> viora.landing.assembler "Consumes plans and affiliate view model from"
        viora.landing.trust   -> viora.landing.assembler "Consumes testimonial/about view model from"
        viora.landing.contact -> viora.landing.assembler "Consumes contact/footer view model from"

        viora.landing.assembler -> viora.landing.contentmodels "Builds section view models from"

        viora.landing.hero  -> viora.landing.cta "Uses CTA navigation from"
        viora.landing.roles -> viora.landing.cta "Uses CTA navigation from"
        viora.landing.plans -> viora.landing.cta "Uses CTA navigation from"
        viora.landing.cta   -> viora.webapp      "Redirects visitors to"
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
