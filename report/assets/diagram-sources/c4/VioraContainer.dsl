workspace "Viora Platform" "Container diagram for the Viora Platform" {

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

        // Relaciones con servicios externos
        viora.api -> agromonitoring "Retrieves satellite imagery, vegetation indices and agro-weather data" "HTTPS/JSON"
        viora.api -> mercadopago    "Processes subscriptions, renewals and refunds" "HTTPS + Webhooks"
        viora.api -> brevo          "Sends password recovery and transactional emails" "HTTPS/API"
        viora.api -> mapbox         "Uses maps and geocoding services" "HTTPS/JSON"
        viora.api -> cloudinary     "Uploads and delivers profile/evidence media" "HTTPS/API"
        viora.api -> senasa         "Consults official phytosanitary information and reference data" "HTTPS/Open data"
    }

    views {
        container viora "VioraContainer" "Container diagram for the Viora Platform" {
            include *
            autoLayout lr
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
