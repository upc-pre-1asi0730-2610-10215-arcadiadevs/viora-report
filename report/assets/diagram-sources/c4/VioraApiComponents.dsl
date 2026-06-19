workspace "Viora Platform" "Container and Component diagrams for the Viora Platform" {

    model {
        oliveProducer = person "Olive Producer" "Monitors plots, receives alerts, requests technical interventions and manages subscription."
        visitor = person "Visitor" "Explores Viora's landing page, plans, testimonials and calls to action."
        agriculturalSpecialist = person "Agricultural Specialist" "Publishes professional portfolio, receives cases, evaluates plots and manages interventions."

        vioraPlatform = softwareSystem "Viora Platform" {
            landingPage = container "Landing Page" "HTML, CSS, TypeScript" "Static website that presents Viora's value proposition, plans, testimonials and calls to action."
            webApplication = container "Web Application" "Angular" "Single-page application used by olive producers and agricultural specialists to manage plots, alerts, interventions and subscriptions."

            apiApplication = container "API Application" "Java, Spring Boot" "REST API that handles authentication, plot management, agronomic monitoring, alerts, marketplace workflows, moderation and subscriptions." {
                externalIntegrationsComponent = component "External Integrations Component" "Spring Component" "Provides adapters for AgroMonitoring, Mapbox, Mercado Pago, Brevo, Cloudinary and SENASA data sources."
                plotManagementComponent = component "Plot Management Component" "Spring Component" "Registers productive areas, validates polygons and manages plot traceability."
                agrometeorologicalMonitoringComponent = component "Agrometeorological Monitoring Component" "Spring Component" "Synchronizes weather, satellite and vegetation index data for registered plots."
                moderationStrikesComponent = component "Moderation & Strikes Component" "Spring Component" "Evaluates misconduct reports and applies strikes, suspensions or account blocking."
                predictionRiskEngine = component "Prediction & Risk Engine" "Spring Component" "Calculates chill portions, crop health, yield projections and phenological risk."
                marketplaceInterventionComponent = component "Marketplace & Intervention Component" "Spring Component" "Matches producers with specialists and manages technical intervention workflows."
                iamComponent = component "IAM Component" "Spring MVC / Spring Security" "Handles authentication, authorization, JWT validation and password recovery."
                alertNotificationComponent = component "Alert & Notification Component" "Spring Component" "Generates phytosanitary, phenological and community preventive alerts."
                subscriptionBillingComponent = component "Subscription & Billing Component" "Spring Component" "Manages trials, subscriptions, payments, renewals and refunds."
                profileComponent = component "Profile Component" "Spring Component" "Manages producer and specialist profile information."
                repositoryComponents = component "Repository Components" "Spring Data JPA" "Persist and retrieve domain data from the relational database."
            }

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

        # Person to container relationships
        oliveProducer -> webApplication "Uses"
        visitor -> landingPage "Explores content and calls to action"
        agriculturalSpecialist -> webApplication "Uses"

        # Container-level relationships
        landingPage -> webApplication "Redirects authenticated users to"
        webApplication -> apiApplication "Makes API requests to" "JSON/HTTPS"
        apiApplication -> database "Reads from and writes to" "JDBC"
        apiApplication -> mediaStorage "Stores and retrieves media assets" "HTTPS/API"

        # Web Application to component relationships
        webApplication -> plotManagementComponent "Registers plots and traceability records" "JSON/HTTPS"
        webApplication -> iamComponent "Authenticates, user manages profile validates" "JSON/HTTPS"
        webApplication -> agrometeorologicalMonitoringComponent "Requests dashboard climate and satellite data" "JSON/HTTPS"
        webApplication -> marketplaceInterventionComponent "Manages specialist search and coordinates plot polygons"
        webApplication -> subscriptionBillingComponent "Manages subscriptions and payments"

        # Internal component relationships
        plotManagementComponent -> repositoryComponents "Reads/writes plot data"
        plotManagementComponent -> agrometeorologicalMonitoringComponent "Provides plot coordinates and polygons"

        agrometeorologicalMonitoringComponent -> predictionRiskEngine "Provides climate, NDVI and historical agronomic data"
        agrometeorologicalMonitoringComponent -> repositoryComponents "Stores synchronized climate and satellite data"

        predictionRiskEngine -> alertNotificationComponent "Triggers risk alerts"
        predictionRiskEngine -> marketplaceInterventionComponent "Publishes critical cases for specialist response"
        predictionRiskEngine -> repositoryComponents "Stores risk and yield projections"

        marketplaceInterventionComponent -> repositoryComponents "Stores service and intervention records"

        alertNotificationComponent -> repositoryComponents "Stores alert records"

        subscriptionBillingComponent -> repositoryComponents "Stores subscription data"

        profileComponent -> repositoryComponents "Reads/writes profile data"

        iamComponent -> moderationStrikesComponent "Requests account suspension or blocking"
        iamComponent -> repositoryComponents "Reads/writes identity data"

        moderationStrikesComponent -> repositoryComponents "Stores reports and strikes"

        repositoryComponents -> database "Persists and retrieves relational domain data" "JDBC"
        repositoryComponents -> mediaStorage "Stores media references and asset metadata" "HTTPS/API"

        # External Integrations to external systems
        externalIntegrationsComponent -> agroMonitoringAPI "Retrieves weather, forecast, historical climate, satellite and NDVI data" "HTTPS/JSON"
        externalIntegrationsComponent -> mapbox "Uses maps and geocoding for plot location" "HTTPS/JSON"
        externalIntegrationsComponent -> cloudinary "Uploads and retrieves media assets" "HTTPS/API"
        externalIntegrationsComponent -> brevo "Sends transactional email notifications" "HTTPS/API"
        externalIntegrationsComponent -> senasa "Consults official phytosanitary reference data" "HTTPS/Open data"
        externalIntegrationsComponent -> mercadoPago "Processes payments and receives payment webhooks" "HTTPS/JSON"
    }

    views {
        container vioraPlatform "Container" "Container diagram for the Viora Platform" {
            include *
            autoLayout lr
        }

        component apiApplication "Components" "Component diagram for the API Application" {
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
            element "Component" {
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