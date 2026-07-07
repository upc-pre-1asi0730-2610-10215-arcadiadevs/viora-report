workspace "Viora - Software Architecture" "API Application Component Diagrams for Viora Platform" {

    !identifiers hierarchical

    model {
        // Servicios externos
        cloudinary = softwareSystem "Cloudinary" "Cloud media storage and delivery service for profile images." {
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

        mercadoPago = softwareSystem "Mercado Pago" "External payment gateway for subscriptions, renewals, refunds and payment status updates." {
            tags "ExternalSystem"
        }

        // Sistema en alcance
        vioraPlatform = softwareSystem "Viora Platform" "Web platform for olive crop monitoring, phytosanitary risk management, technical service coordination and subscription management." {
            tags "CoreSystem"

            webApplication = container "Web Application" "Single-page application used by olive producers and agricultural specialists to manage plots, alerts, interventions and subscriptions." "Vue.js" {
                tags "Browser"
            }

            database = container "Database" "Stores users, plots, agronomic records, alerts, interventions, subscriptions." "MySQL" {
                tags "Container" "Database"
            }

            mediaStorage = container "Media Storage" "Stores profile images and related media assets." "Cloudinary-based media storage" {
                tags "Bucket"
            }

            apiApplication = container "API Application" "REST API that handles authentication, plot management, agronomic monitoring, surveillance, interventions and billing." "ASP.NET Core" {
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
                relationalRepository = component "Relational Repository" "Maps domain entities to database tables using Entity Framework Core." "EF Core Repository" {
                    tags "Component"
                }
            }
        }

        // Web Application a componentes de API
        vioraPlatform.webApplication -> vioraPlatform.apiApplication.iamContext "Authenticates user and requests session tokens" "JSON/HTTPS"
        vioraPlatform.webApplication -> vioraPlatform.apiApplication.profileContext "Manages profile information" "JSON/HTTPS"
        vioraPlatform.webApplication -> vioraPlatform.apiApplication.agronomicContext "Registers plots, IoT devices, and queries stats/nutrition" "JSON/HTTPS"
        vioraPlatform.webApplication -> vioraPlatform.apiApplication.surveillanceContext "Queries active alerts and reports pest sightings" "JSON/HTTPS"
        vioraPlatform.webApplication -> vioraPlatform.apiApplication.interventionContext "Coordinates specialist services and tracks interventions" "JSON/HTTPS"
        vioraPlatform.webApplication -> vioraPlatform.apiApplication.billingContext "Subscribes, views invoices, and redeems coupon codes" "JSON/HTTPS"

        // Relaciones internas de componentes de API
        vioraPlatform.apiApplication.interventionContext -> vioraPlatform.apiApplication.agronomicContext "Queries plot details and boundaries"
        vioraPlatform.apiApplication.surveillanceContext -> vioraPlatform.apiApplication.agronomicContext "Reads plot locations for local risk mapping"

        // Uso de Shared Kernel por todos los contextos
        vioraPlatform.apiApplication.iamContext          -> vioraPlatform.apiApplication.sharedKernel "Uses"
        vioraPlatform.apiApplication.profileContext      -> vioraPlatform.apiApplication.sharedKernel "Uses"
        vioraPlatform.apiApplication.agronomicContext    -> vioraPlatform.apiApplication.sharedKernel "Uses"
        vioraPlatform.apiApplication.surveillanceContext -> vioraPlatform.apiApplication.sharedKernel "Uses"
        vioraPlatform.apiApplication.interventionContext -> vioraPlatform.apiApplication.sharedKernel "Uses"
        vioraPlatform.apiApplication.billingContext      -> vioraPlatform.apiApplication.sharedKernel "Uses"

        // Persistencia
        vioraPlatform.apiApplication.iamContext          -> vioraPlatform.apiApplication.relationalRepository "Reads/writes identity data"
        vioraPlatform.apiApplication.profileContext      -> vioraPlatform.apiApplication.relationalRepository "Reads/writes profile data"
        vioraPlatform.apiApplication.agronomicContext    -> vioraPlatform.apiApplication.relationalRepository "Reads/writes plot, IoT, and stats data"
        vioraPlatform.apiApplication.surveillanceContext -> vioraPlatform.apiApplication.relationalRepository "Reads/writes reports and alert records"
        vioraPlatform.apiApplication.interventionContext -> vioraPlatform.apiApplication.relationalRepository "Reads/writes intervention and prescription records"
        vioraPlatform.apiApplication.billingContext      -> vioraPlatform.apiApplication.relationalRepository "Reads/writes subscription and transaction data"

        // Repositorios a almacenamiento
        vioraPlatform.apiApplication.relationalRepository -> vioraPlatform.database "Persists and retrieves relational domain data" "ADO.NET"
        vioraPlatform.apiApplication.relationalRepository -> vioraPlatform.mediaStorage "Stores and retrieves media asset metadata" "HTTPS/API"

        // Componentes de API a servicios externos
        vioraPlatform.apiApplication.agronomicContext    -> agroMonitoringApi "Retrieves weather forecast, climate history, and satellite imagery tiles" "HTTPS/JSON"
        vioraPlatform.apiApplication.agronomicContext    -> mapbox "Geocodes boundaries and displays plot mapping UI" "HTTPS/JSON"
        vioraPlatform.apiApplication.billingContext      -> mercadoPago "Processes subscriptions, renewals and processes payment webhooks" "HTTPS/JSON"
        vioraPlatform.apiApplication.billingContext      -> brevo "Sends password recovery, welcome and transactional emails" "HTTPS/API"
        vioraPlatform.apiApplication.relationalRepository -> cloudinary "Delegates profile images upload" "HTTPS/API"
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
