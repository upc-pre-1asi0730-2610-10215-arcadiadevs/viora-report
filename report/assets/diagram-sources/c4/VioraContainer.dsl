workspace "Viora Platform" "Container diagram for the Viora Platform" {

    model {
        oliveProducer = person "Olive Producer" "Monitors plots, receives alerts, requests technical interventions and manages subscription."
        visitor = person "Visitor" "Explores Viora's landing page, plans, testimonials and calls to action."
        agriculturalSpecialist = person "Agricultural Specialist" "Publishes professional portfolio, receives cases, evaluates plots and manages interventions."

        vioraPlatform = softwareSystem "Viora Platform" {
            landingPage = container "Landing Page" "HTML, CSS, TypeScript" "Static website that presents Viora's value proposition, plans, testimonials and calls to action."
            webApplication = container "Web Application" "Angular" "Single-page application used by olive producers and agricultural specialists to manage plots, alerts, interventions and subscriptions."
            apiApplication = container "API Application" "Java, Spring Boot" "REST API that handles authentication, plot management, agronomic monitoring, alerts, marketplace workflows, moderation and subscriptions."
            database = container "Database" "MySQL" "Stores users, plots, agronomic records, alerts, interventions, subscriptions and moderation data."
            mediaStorage = container "Media Storage" "Cloudinary-backed media storage" "Stores field evidence images, profile images and related media assets."
        }

        agroMonitoringAPI = softwareSystem "AgroMonitoring API" "External provider of satellite imagery, vegetation indices and agro-weather data." {
            tags "External System"
        }
        mercadoPago = softwareSystem "Mercado Pago" "External payment gateway for subscriptions, renewals, refunds and payment status updates." {
            tags "External System"
        }
        brevo = softwareSystem "Brevo" "Transactional email service for password recovery and account notifications." {
            tags "External System"
        }
        mapbox = softwareSystem "Mapbox" "Maps and geocoding service used for plot delimitation and location-based features." {
            tags "External System"
        }
        cloudinary = softwareSystem "Cloudinary" "Cloud media storage and delivery service for profile images and field evidence." {
            tags "External System"
        }
        senasa = softwareSystem "SENASA Official/Open Data Source" "Official phytosanitary information source used as institutional reference for alerts, regulations and sanitary context." {
            tags "External System"
        }

        # Person relationships
        oliveProducer -> webApplication "Uses"
        visitor -> landingPage "Explores content and calls to action"
        agriculturalSpecialist -> webApplication "Uses"

        # Internal container relationships
        landingPage -> webApplication "Redirects authenticated users to"
        webApplication -> apiApplication "Makes API requests to" "JSON/HTTPS"
        apiApplication -> database "Reads from and writes to" "JDBC"
        apiApplication -> mediaStorage "Stores and retrieves media assets" "HTTPS/API"

        # External system relationships
        apiApplication -> agroMonitoringAPI "Retrieves satellite imagery, vegetation indices and agro-weather data" "HTTPS/JSON"
        apiApplication -> mercadoPago "Processes subscriptions, renewals and refunds" "HTTPS + Webhooks"
        apiApplication -> brevo "Sends password recovery and transactional emails" "HTTPS/API"
        apiApplication -> mapbox "Uses maps and geocoding services" "HTTPS/JSON"
        apiApplication -> cloudinary "Uploads and delivers profile/evidence media" "HTTPS/API"
        apiApplication -> senasa "Consults official phytosanitary information and reference data" "HTTPS/Open data"
    }

    views {
        container vioraPlatform "Container" "Container diagram for the Viora Platform" {
            include *
            autoLayout lr
        }

        styles {
            element "Person" {
                background #84c26d
                color #000000
                shape person
            }
            element "Software System" {
                background #5b9bd5
                color #ffffff
            }
            element "Container" {
                background #2e75b5
                color #ffffff
            }
            element "External System" {
                background #c00000
                color #ffffff
            }
        }
    }

}