workspace "Viora - Software Architecture" "API Application Component Diagrams for Viora Platform" {

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

                iam = component "IAM Component" "Handles authentication, authorization, JWT validation and password recovery." "ASP.NET Core / Identity" {
                    tags "Component"
                }
                profile = component "Profile Component" "Manages producer and specialist profile information." "ASP.NET Core Service" {
                    tags "Component"
                }
                plots = component "Plot Management Component" "Registers productive areas, validates polygons and manages plot traceability." "ASP.NET Core Service" {
                    tags "Component"
                }
                monitoring = component "Agrometeorological Monitoring Component" "Synchronizes weather, satellite and vegetation index data for registered plots." "ASP.NET Core Service" {
                    tags "Component"
                }
                prediction = component "Prediction & Risk Engine" "Calculates chill portions, crop health, yield projections and phenological risk." "ASP.NET Core Service" {
                    tags "Component"
                }
                alerts = component "Alert & Notification Component" "Generates phytosanitary, phenological and community preventive alerts." "ASP.NET Core Service" {
                    tags "Component"
                }
                marketplace = component "Marketplace & Intervention Component" "Matches producers with specialists and manages technical intervention workflows." "ASP.NET Core Service" {
                    tags "Component"
                }
                billing = component "Subscription & Billing Component" "Manages trials, subscriptions, payments, renewals and refunds." "ASP.NET Core Service" {
                    tags "Component"
                }
                moderation = component "Moderation & Strikes Component" "Evaluates misconduct reports and applies strikes, suspensions or account blocking." "ASP.NET Core Service" {
                    tags "Component"
                }
                integrations = component "External Integrations Component" "Provides adapters for AgroMonitoring, Mapbox, Mercado Pago, Brevo, Cloudinary and SENASA data sources." "ASP.NET Core Service" {
                    tags "Component"
                }
                repositories = component "Repository Components" "Persist and retrieve domain data from the relational database." "Entity Framework Core" {
                    tags "Component"
                }
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

        // Web Application a componentes de API
        viora.webapp -> viora.api.iam         "Authenticates users and validates sessions" "JSON/HTTPS"
        viora.webapp -> viora.api.profile     "Manages profile data" "JSON/HTTPS"
        viora.webapp -> viora.api.plots       "Registers plots and traceability records" "JSON/HTTPS"
        viora.webapp -> viora.api.monitoring  "Requests dashboard climate and satellite data" "JSON/HTTPS"
        viora.webapp -> viora.api.marketplace "Manages specialist search and interventions" "JSON/HTTPS"
        viora.webapp -> viora.api.billing     "Manages subscriptions and payments" "JSON/HTTPS"

        // Relaciones internas de componentes de API
        viora.api.plots      -> viora.api.monitoring  "Provides plot coordinates and polygons"
        viora.api.monitoring -> viora.api.prediction  "Provides climate, NDVI and historical agronomic data"
        viora.api.prediction -> viora.api.alerts      "Triggers risk alerts"
        viora.api.alerts     -> viora.api.marketplace "Publishes critical cases for specialist response"
        viora.api.moderation -> viora.api.iam         "Requests account suspension or blocking"

        viora.api.iam         -> viora.api.repositories "Reads/writes identity data"
        viora.api.profile     -> viora.api.repositories "Reads/writes profile data"
        viora.api.plots       -> viora.api.repositories "Reads/writes plot data"
        viora.api.monitoring  -> viora.api.repositories "Stores synchronized climate and satellite data"
        viora.api.prediction  -> viora.api.repositories "Stores risk and yield projections"
        viora.api.alerts      -> viora.api.repositories "Stores alert records"
        viora.api.marketplace -> viora.api.repositories "Stores service and intervention records"
        viora.api.billing     -> viora.api.repositories "Stores subscription data"
        viora.api.moderation  -> viora.api.repositories "Stores reports and strikes"

        // Componentes de API a servicios externos
        viora.api.monitoring   -> agromonitoring "Retrieves weather, forecast, historical climate, satellite and NDVI data" "HTTPS/JSON"
        viora.api.plots        -> mapbox         "Uses maps and geocoding for plot location" "HTTPS/JSON"
        viora.api.billing      -> mercadopago    "Processes payments and receives payment webhooks" "HTTPS/JSON"
        viora.api.alerts       -> brevo          "Sends transactional email notifications" "HTTPS/API"
        viora.api.integrations -> cloudinary     "Uploads and retrieves media assets" "HTTPS/API"
        viora.api.alerts       -> senasa         "Consults official phytosanitary reference data" "HTTPS/Open data"

        // Repositorios a almacenamiento
        viora.api.repositories -> viora.db    "Persists and retrieves relational domain data" "ADO.NET"
        viora.api.repositories -> viora.media "Stores media references and asset metadata" "HTTPS/API"
        viora.api.integrations -> viora.media "Stores and retrieves field evidence and profile media" "HTTPS/API"
        viora.media             -> cloudinary "Delegates media storage and delivery" "HTTPS/API"
    }

    views {
        container viora "VioraContainer" {
            include *
        }

        component viora.api "VioraApiComponents" {
            include *
            include viora.db
            include viora.media
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
