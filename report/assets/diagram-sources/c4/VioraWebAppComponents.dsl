workspace "Viora - Software Architecture" "Web Application Component Diagrams for Viora Platform" {

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

        // Web Application a componentes de API
        viora.webapp -> viora.api.iamContext          "Authenticates users and validates sessions" "JSON/HTTPS"
        viora.webapp -> viora.api.profileContext      "Manages profile data" "JSON/HTTPS"
        viora.webapp -> viora.api.agronomicContext    "Registers plots, IoT devices, and queries stats/nutrition" "JSON/HTTPS"
        viora.webapp -> viora.api.surveillanceContext "Queries active alerts and reports pest sightings" "JSON/HTTPS"
        viora.webapp -> viora.api.interventionContext "Coordinates specialist services and tracks interventions" "JSON/HTTPS"
        viora.webapp -> viora.api.billingContext      "Subscribes, views invoices, and processes payments" "JSON/HTTPS"

        // Relaciones internas de componentes de API
        viora.api.interventionContext -> viora.api.agronomicContext "Queries plot details and boundaries"
        viora.api.surveillanceContext -> viora.api.agronomicContext "Reads plot locations for local risk mapping"

        viora.api.iamContext          -> viora.api.sharedKernel "Uses"
        viora.api.profileContext      -> viora.api.sharedKernel "Uses"
        viora.api.agronomicContext    -> viora.api.sharedKernel "Uses"
        viora.api.surveillanceContext -> viora.api.sharedKernel "Uses"
        viora.api.interventionContext -> viora.api.sharedKernel "Uses"
        viora.api.billingContext      -> viora.api.sharedKernel "Uses"

        viora.api.iamContext          -> viora.api.repositories "Reads/writes identity data"
        viora.api.profileContext      -> viora.api.repositories "Reads/writes profile data"
        viora.api.agronomicContext    -> viora.api.repositories "Reads/writes plot, IoT, and stats data"
        viora.api.surveillanceContext -> viora.api.repositories "Reads/writes reports and alert records"
        viora.api.interventionContext -> viora.api.repositories "Reads/writes intervention and prescription records"
        viora.api.billingContext      -> viora.api.repositories "Reads/writes subscription and transaction data"

        // Componentes de API a servicios externos
        viora.api.agronomicContext -> agromonitoring "Retrieves weather forecast, climate history, and satellite imagery tiles" "HTTPS/JSON"
        viora.api.agronomicContext -> mapbox         "Geocodes boundaries and displays plot mapping UI" "HTTPS/JSON"
        viora.api.billingContext   -> mercadopago    "Processes subscriptions, renewals and processes payment webhooks" "HTTPS/JSON"
        viora.api.surveillanceContext -> brevo      "Sends transactional email alerts" "HTTPS/API"

        // Repositorios a almacenamiento
        viora.api.repositories -> viora.db    "Persists and retrieves relational domain data" "ADO.NET"
        viora.api.repositories -> viora.media "Stores media references and asset metadata" "HTTPS/API"
        viora.media             -> cloudinary "Delegates profile media storage and delivery" "HTTPS/API"

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

        viora.webapp.sharedInfrastructure -> viora.api.iamContext          "Makes API calls to" "JSON/HTTPS"
        viora.webapp.sharedInfrastructure -> viora.api.profileContext      "Makes API calls to" "JSON/HTTPS"
        viora.webapp.sharedInfrastructure -> viora.api.agronomicContext    "Makes API calls to" "JSON/HTTPS"
        viora.webapp.sharedInfrastructure -> viora.api.surveillanceContext "Makes API calls to" "JSON/HTTPS"
        viora.webapp.sharedInfrastructure -> viora.api.interventionContext "Makes API calls to" "JSON/HTTPS"
        viora.webapp.sharedInfrastructure -> viora.api.billingContext      "Makes API calls to" "JSON/HTTPS"

        viora.webapp.sharedInfrastructure -> mapbox "Consumes mapping and geocoding services from" "HTTPS/JSON"
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

        component viora.webapp "VioraWebAppComponents" {
            include *
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
