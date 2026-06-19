workspace "Viora Platform" "Container and Component diagrams for the Viora Platform" {

    model {
        oliveProducer = person "Olive Producer" "Monitors plots, receives alerts, requests technical interventions and manages subscription."
        visitor = person "Visitor" "Explores Viora's landing page, plans, testimonials and calls to action."
        agriculturalSpecialist = person "Agricultural Specialist" "Publishes professional portfolio, receives cases, evaluates plots and manages interventions."

        vioraPlatform = softwareSystem "Viora Platform" {
            landingPage = container "Landing Page" "HTML, CSS, TypeScript" "Static website that presents Viora's value proposition, plans, testimonials and calls to action."

            webApplication = container "Web Application" "Vue.js" "Single-page application used by olive producers and agricultural specialists to manage plots, alerts, interventions and subscriptions." {
                routingGuards = component "Routing & Guards Component" "Vue Router / Navigation Guards" "Protects routes and redirects users according to authentication state and role."
                profileUI = component "Profile UI Component" "Vue.js Component" "Allows producer and specialist profile visualization and update."
                authUI = component "Authentication UI Component" "Vue.js Component / Services" "Handles sign in, password recovery and session entry flows."
                dashboardUI = component "Dashboard UI Component" "Vue.js Component" "Displays crop health, climate, NDVI, risk status and alert summaries."
                notificationCenter = component "Notification Center Component" "Vue.js Component" "Displays alerts, warnings and notification summaries in the UI."
                subscriptionUI = component "Subscription & Billing UI Component" "Vue.js Component" "Allows users to manage trial, subscription, payments and renewals."
                plotManagementUI = component "Plot Management UI Component" "Vue.js Component" "Allows plot registration, polygon delimitation and agronomic traceability input."
                marketplaceUI = component "Marketplace & Intervention UI Component" "Vue.js Component" "Shows specialists, critical cases and intervention workflows."
                sharedUI = component "Shared UI Components" "Vue.js Shared Components" "Reusable layout, navbar, sidebar, cards, dialogs, tables and common widgets."
                apiClientServices = component "API Client Services" "Vue.js Services / Axios" "Encapsulates HTTP communication with the API Application."
            }

            apiApplication = container "API Application" "ASP.NET Core" "REST API that handles authentication, plot management, agronomic monitoring, alerts, marketplace workflows, moderation and subscriptions." {
                externalIntegrationsComponent = component "External Integrations Component" "ASP.NET Core Service" "Provides adapters for AgroMonitoring, Mapbox, Mercado Pago, Brevo, Cloudinary and SENASA data sources."
                plotManagementComponent = component "Plot Management Component" "ASP.NET Core Service" "Registers productive areas, validates polygons and manages plot traceability."
                agrometeorologicalMonitoringComponent = component "Agrometeorological Monitoring Component" "ASP.NET Core Service" "Synchronizes weather, satellite and vegetation index data for registered plots."
                moderationStrikesComponent = component "Moderation & Strikes Component" "ASP.NET Core Service" "Evaluates misconduct reports and applies strikes, suspensions or account blocking."
                predictionRiskEngine = component "Prediction & Risk Engine" "ASP.NET Core Service" "Calculates chill portions, crop health, yield projections and phenological risk."
                marketplaceInterventionComponent = component "Marketplace & Intervention Component" "ASP.NET Core Service" "Matches producers with specialists and manages technical intervention workflows."
                iamComponent = component "IAM Component" "ASP.NET Core / Identity" "Handles authentication, authorization, JWT validation and password recovery."
                alertNotificationComponent = component "Alert & Notification Component" "ASP.NET Core Service" "Generates phytosanitary, phenological and community preventive alerts."
                subscriptionBillingComponent = component "Subscription & Billing Component" "ASP.NET Core Service" "Manages trials, subscriptions, payments, renewals and refunds."
                profileComponent = component "Profile Component" "ASP.NET Core Service" "Manages producer and specialist profile information."
                repositoryComponents = component "Repository Components" "Entity Framework Core" "Persist and retrieve domain data from the relational database."
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

        # === Container-level relationships ===
        oliveProducer -> webApplication "Uses"
        visitor -> landingPage "Explores content and calls to action"
        agriculturalSpecialist -> webApplication "Uses"

        landingPage -> webApplication "Redirects authenticated users to"
        webApplication -> apiApplication "Makes API requests to" "JSON/HTTPS"
        apiApplication -> database "Reads from and writes to" "ADO.NET"
        apiApplication -> mediaStorage "Stores and retrieves media assets" "HTTPS/API"

        # === API Application component relationships (from previous diagram) ===
        webApplication -> plotManagementComponent "Registers plots and traceability records" "JSON/HTTPS"
        webApplication -> iamComponent "Authenticates, user manages profile validates" "JSON/HTTPS"
        webApplication -> agrometeorologicalMonitoringComponent "Requests dashboard climate and satellite data" "JSON/HTTPS"
        webApplication -> marketplaceInterventionComponent "Manages specialist search and coordinates plot polygons"
        webApplication -> subscriptionBillingComponent "Manages subscriptions and payments"

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

        repositoryComponents -> database "Persists and retrieves relational domain data" "ADO.NET"
        repositoryComponents -> mediaStorage "Stores media references and asset metadata" "HTTPS/API"

        externalIntegrationsComponent -> agroMonitoringAPI "Retrieves weather, forecast, historical climate, satellite and NDVI data" "HTTPS/JSON"
        externalIntegrationsComponent -> mapbox "Uses maps and geocoding for plot location" "HTTPS/JSON"
        externalIntegrationsComponent -> cloudinary "Uploads and retrieves media assets" "HTTPS/API"
        externalIntegrationsComponent -> brevo "Sends transactional email notifications" "HTTPS/API"
        externalIntegrationsComponent -> senasa "Consults official phytosanitary reference data" "HTTPS/Open data"
        externalIntegrationsComponent -> mercadoPago "Processes payments and receives payment webhooks" "HTTPS/JSON"

        # === Web Application component relationships ===
        oliveProducer -> authUI "Signs in and recovers account access"
        oliveProducer -> profileUI "Updates producer profile"
        oliveProducer -> dashboardUI "Views farm dashboard, monitoring and alerts"
        oliveProducer -> subscriptionUI "Manages subscription, trial and payments"
        oliveProducer -> plotManagementUI "Registers plots and agronomic traceability"

        agriculturalSpecialist -> authUI "Signs in and recovers account access"
        agriculturalSpecialist -> profileUI "Updates specialist profile"
        agriculturalSpecialist -> dashboardUI "Views cases, monitoring insights and alerts"
        agriculturalSpecialist -> marketplaceUI "Manages interventions and technical cases"

        landingPage -> routingGuards "Redirects authenticated users to"

        authUI -> sharedUI "Uses authentication forms and dialogs"
        authUI -> apiClientServices "Sends sign-in and recovery requests"
        authUI -> subscriptionUI "Uses payment and plan widgets"
        authUI -> profileUI "Requests and updates profile data"

        profileUI -> sharedUI "Uses profile forms and reusable widgets"
        profileUI -> apiClientServices "Requests and updates profile data"
        profileUI -> plotManagementUI "Uses reusable notification widgets"
        profileUI -> dashboardUI "Protects access to"

        routingGuards -> authUI "Routes authenticated users to"
        routingGuards -> dashboardUI "Routes users to"
        routingGuards -> marketplaceUI "Routes users to"
        routingGuards -> notificationCenter "Routes users to"
        routingGuards -> profileUI "Routes users to"

        dashboardUI -> plotManagementUI "Uses charts, cards and layout"
        dashboardUI -> apiClientServices "Requests and updates profile data"
        dashboardUI -> notificationCenter "Displays alert summaries from"
        dashboardUI -> marketplaceUI "Routes users to"

        plotManagementUI -> sharedUI "Uses lists, dialogs and reusable widgets"
        plotManagementUI -> apiClientServices "Sends plot and climate and alert data"
        plotManagementUI -> marketplaceUI "Uses reusable notification widgets"

        subscriptionUI -> sharedUI "Uses forms, dialogs and reusable widgets"
        subscriptionUI -> apiClientServices "Requests subscription and payment data"

        marketplaceUI -> apiClientServices "Requests specialist and intervention data"
        marketplaceUI -> notificationCenter "Loads alert notifications"

        notificationCenter -> apiClientServices "Loads alert notifications"

        sharedUI -> apiClientServices "Makes API requests to" "JSON/HTTPS"

        apiClientServices -> apiApplication "Makes API requests to" "JSON/HTTPS"
    }

    views {
        container vioraPlatform "Container" "Container diagram for the Viora Platform" {
            include *
            autoLayout lr
        }

        component apiApplication "APIComponents" "Component diagram for the API Application" {
            include *
            autoLayout lr
        }

        component webApplication "WebAppComponents" "Component diagram for the Web Application" {
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