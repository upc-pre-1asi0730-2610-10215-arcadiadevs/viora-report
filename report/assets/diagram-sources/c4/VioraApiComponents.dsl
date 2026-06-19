workspace "Viora - Software Architecture" "API Application Component Diagrams for Viora Platform" {

    !identifiers hierarchical

    model {
        // Servicios externos
        cloudinary = softwareSystem "Cloudinary" "Cloud media storage and delivery service for profile images and field evidence." {
            tags "ExternalSystem"
        }
        mapbox = softwareSystem "Mapbox" "Maps and geocoding service used for plot delimitation and location-based features." {
            tags "ExternalSystem"
        }
        agroMonitoringApi = softwareSystem "AgroMonitoring API" "External provider of satellite imagery, vegetation indices and agro-weather data." {
            tags "ExternalSystem"
        }
        brevo = softwareSystem "Brevo" "Transactional email service for password recovery and account notifications." {
            tags "ExternalSystem"
        }
        senasa = softwareSystem "SENASA Official/Open Data Source" "Official phytosanitary information source used as institutional reference for alerts, regulations and sanitary context." {
            tags "ExternalSystem"
        }
        mercadoPago = softwareSystem "Mercado Pago" "External payment gateway for subscriptions, renewals, refunds and payment status updates." {
            tags "ExternalSystem"
        }

        // Sistema en alcance
        vioraPlatform = softwareSystem "Viora Platform" "Web platform for olive crop monitoring, phytosanitary risk management, technical service coordination and subscription management." {
            tags "CoreSystem"

            webApplication = container "Web Application" "Single-page application used by olive producers and agricultural specialists to manage plots, alerts, interventions and subscriptions." "Vue.js" {
                tags "Browser"
            }

            database = container "Database" "Stores users, plots, agronomic records, alerts, interventions, subscriptions and moderation data." "MySQL" {
                tags "Container" "Database"
            }

            mediaStorage = container "Media Storage" "Stores field evidence images, profile images and related media assets." "Cloudinary-based media storage" {
                tags "Bucket"
            }

            apiApplication = container "API Application" "REST API that handles authentication, plot management, agronomic monitoring, alerts, marketplace workflows, moderation and subscriptions." "ASP.NET Core" {
                tags "RoundedBox" "CodeSystem"

                externalIntegrations = component "External Integrations Component" "Provides adapters for AgroMonitoring, Mapbox, Mercado Pago, Brevo, Cloudinary and SENASA data sources." "ASP.NET Core Service" {
                    tags "Component"
                }
                plotManagement = component "Plot Management Component" "Registers productive areas, validates polygons and manages plot traceability." "ASP.NET Core Service" {
                    tags "Component"
                }
                agroMonitoringComp = component "Agrometeorological Monitoring Component" "Synchronizes weather, satellite and vegetation index data for registered plots." "ASP.NET Core Service" {
                    tags "Component"
                }
                moderationStrikes = component "Moderation & Strikes Component" "Evaluates misconduct reports and applies strikes, suspensions or account blocking." "ASP.NET Core Service" {
                    tags "Component"
                }
                predictionRisk = component "Prediction & Risk Engine" "Calculates chill portions, crop health, yield projections and phenological risk." "ASP.NET Core Service" {
                    tags "Component"
                }
                marketplaceIntervention = component "Marketplace & Intervention Component" "Matches producers with specialists and manages technical intervention workflows." "ASP.NET Core Service" {
                    tags "Component"
                }
                iam = component "IAM Component" "Handles authentication, authorization, JWT validation and password recovery." "ASP.NET Core / Identity" {
                    tags "Component"
                }
                alertNotification = component "Alert & Notification Component" "Generates phytosanitary, phenological and community preventive alerts." "ASP.NET Core Service" {
                    tags "Component"
                }
                subscriptionBilling = component "Subscription & Billing Component" "Manages trials, subscriptions, payments, renewals and refunds." "ASP.NET Core Service" {
                    tags "Component"
                }
                profile = component "Profile Component" "Manages producer and specialist profile information." "ASP.NET Core Service" {
                    tags "Component"
                }
                repository = component "Repository Components" "Persist and retrieve domain data from the relational database." "Entity Framework Core" {
                    tags "Component"
                }
            }
        }

        // Web Application a componentes de API
        vioraPlatform.webApplication -> vioraPlatform.apiApplication.plotManagement "Registers plots and traceability records" "JSON/HTTPS"
        vioraPlatform.webApplication -> vioraPlatform.apiApplication.agroMonitoringComp "Requests dashboard climate and satellite data" "JSON/HTTPS"
        vioraPlatform.webApplication -> vioraPlatform.apiApplication.iam "Authenticates user, validates token" "JSON/HTTPS"
        vioraPlatform.webApplication -> vioraPlatform.apiApplication.profile "Manages profile data" "JSON/HTTPS"

        // Relaciones internas de componentes de API
        vioraPlatform.apiApplication.iam -> vioraPlatform.apiApplication.moderationStrikes "Requests account suspension or blocking"
        vioraPlatform.apiApplication.predictionRisk -> vioraPlatform.apiApplication.alertNotification "Triggers risk alerts"
        vioraPlatform.apiApplication.plotManagement -> vioraPlatform.apiApplication.marketplaceIntervention "Provides plot coordinates and polygons"
        vioraPlatform.apiApplication.agroMonitoringComp -> vioraPlatform.apiApplication.predictionRisk "Provides climate, NDVI and historical agronomic data"
        vioraPlatform.apiApplication.marketplaceIntervention -> vioraPlatform.apiApplication.alertNotification "Publishes critical cases for specialist response"

        vioraPlatform.apiApplication.plotManagement -> vioraPlatform.apiApplication.repository "Reads/writes plot data"
        vioraPlatform.apiApplication.agroMonitoringComp -> vioraPlatform.apiApplication.repository "Stores synchronized climate and satellite data"
        vioraPlatform.apiApplication.moderationStrikes -> vioraPlatform.apiApplication.repository "Stores reports and strikes"
        vioraPlatform.apiApplication.predictionRisk -> vioraPlatform.apiApplication.repository "Stores risk and yield projections"
        vioraPlatform.apiApplication.marketplaceIntervention -> vioraPlatform.apiApplication.repository "Stores service and intervention records"
        vioraPlatform.apiApplication.iam -> vioraPlatform.apiApplication.repository "Reads/writes identity data"
        vioraPlatform.apiApplication.alertNotification -> vioraPlatform.apiApplication.repository "Stores alert records"
        vioraPlatform.apiApplication.subscriptionBilling -> vioraPlatform.apiApplication.repository "Stores subscription data"
        vioraPlatform.apiApplication.profile -> vioraPlatform.apiApplication.repository "Reads/writes profile data"

        // Repositorios a almacenamiento
        vioraPlatform.apiApplication.repository -> vioraPlatform.database "Persists and retrieves relational domain data" "ADO.NET"
        vioraPlatform.apiApplication.repository -> vioraPlatform.mediaStorage "Stores media references and asset metadata" "HTTPS/API"
        vioraPlatform.apiApplication.plotManagement -> vioraPlatform.mediaStorage "Uploads and retrieves media assets" "HTTPS/API"

        // Componentes de API a servicios externos
        vioraPlatform.apiApplication.agroMonitoringComp -> agroMonitoringApi "Retrieves weather, forecast, historical climate, satellite and NDVI data" "HTTPS/JSON"
        vioraPlatform.apiApplication.marketplaceIntervention -> mapbox "Uses maps and geocoding for plot location" "HTTPS/JSON"
        vioraPlatform.apiApplication.subscriptionBilling -> mercadoPago "Processes payments and receives payment webhooks" "HTTPS/JSON"
        vioraPlatform.apiApplication.subscriptionBilling -> brevo "Sends transactional email notifications" "HTTPS/API"
        vioraPlatform.apiApplication.alertNotification -> senasa "Consults official phytosanitary reference data" "HTTPS/Open data"
        vioraPlatform.apiApplication.externalIntegrations -> cloudinary "Delegates media storage and delivery" "HTTPS/API"
    }

    views {
        component vioraPlatform.apiApplication "VioraApiComponents" "Component diagram for the API Application" {
            include *
            include vioraPlatform.database
            include vioraPlatform.mediaStorage
            autoLayout tb
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
