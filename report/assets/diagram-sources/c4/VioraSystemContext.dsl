workspace "Viora - Software Architecture" "System Context and Container Diagrams for Viora Platform" {

    !identifiers hierarchical

    model {
        // Aqui definimos a las personas
        visitor = person "Visitor" "Explores Viora's landing page, plans, testimonials and calls to action."
        producer = person "Olive Producer" "Monitors plots, receives alerts, requests technical interventions and manages subscription."
        specialist = person "Agricultural Specialist" "Publishes professional portfolio, receives cases, evaluates plots and manages interventions."

        // Aqui se hace el zoom hacia el siguiente diagrama de contenedores
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
        
            authui = component "Authentication UI Component" "Handles sign in, password recovery and session entry flows." "Vue.js Component / Services" {
                tags "Component"
            }
        
            dashboardui = component "Dashboard UI Component" "Displays crop health, climate, NDVI, risk status and alert summaries." "Vue.js Component" {
                tags "Component"
            }
        
            plotsui = component "Plot Management UI Component" "Allows plot registration, polygon delimitation and agronomic traceability input." "Vue.js Component" {
                tags "Component"
            }
        
            marketplaceui = component "Marketplace & Intervention UI Component" "Shows specialists, critical cases and intervention workflows." "Vue.js Component" {
                tags "Component"
            }
        
            billingui = component "Subscription & Billing UI Component" "Allows users to manage trial, subscription, payments and renewals." "Vue.js Component" {
                tags "Component"
            }
        
            profileui = component "Profile UI Component" "Allows producer and specialist profile visualization and update." "Vue.js Component" {
                tags "Component"
            }
        
            notificationsui = component "Notification Center Component" "Displays alerts, warnings and notification summaries in the UI." "Vue.js Component" {
                tags "Component"
            }
        
            routing = component "Routing & Guards Component" "Protects routes and redirects users according to authentication state and role." "Vue Router / Navigation Guards" {
                tags "Component"
            }
        
            sharedui = component "Shared UI Components" "Reusable layout, navbar, sidebar, cards, dialogs, tables and common widgets." "Vue.js Shared Components" {
                tags "Component"
            }
        
            apiclient = component "API Client Services" "Encapsulates HTTP communication with the API Application." "Vue.js Services / Axios" {
                tags "Component"
            }
        }

            api = container "API Application" "REST API that handles authentication, plot management, agronomic monitoring, alerts, marketplace workflows, moderation and subscriptions." "ASP.NET Core" {
                tags "RoundedBox" "CodeSystem"
                // componentes internos
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

        // Aqui, para el diagrama de contexto, se define los servicios externos
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

        // Relaciones de System Context 
        visitor  -> viora "Explores the landing page, plans and value proposition"
        producer -> viora "Monitors plots, receives alerts, requests services and manages subscription"
        specialist -> viora "Publishes portfolio, receives alerts, evaluates cases and manages interventions"

        viora -> agromonitoring "Retrieves satellite imagery, vegetation indices and agro-weather data"
        viora -> mercadopago "Processes subscriptions, payments, renewals and refunds"
        viora -> brevo "Sends password recovery and transactional email notifications"
        viora -> mapbox "Uses maps and geocoding for plot delimitation and location services"
        viora -> cloudinary "Stores and delivers profile images and field evidence media"
        viora -> senasa "Consults official phytosanitary information and reference data"

        // Relaciones internas de Container
        visitor    -> viora.landing "Explores content and calls to action"
        producer   -> viora.webapp  "Uses"
        specialist -> viora.webapp  "Uses"

        viora.landing -> viora.webapp "Redirects authenticated users to"
        viora.webapp  -> viora.api   "Makes API requests to" "JSON/HTTPS"
        viora.api     -> viora.db    "Reads from and writes to" "ADO.NET"
        viora.api     -> viora.media "Stores and retrieves media assets" "HTTPS/API"

        viora.api -> agromonitoring "Retrieves satellite imagery, vegetation indices and agro-weather data" "HTTPS/JSON"
        viora.api -> mercadopago    "Processes subscriptions, renewals and refunds" "HTTPS/JSON + Webhooks"
        viora.api -> brevo          "Sends password recovery and transactional emails" "HTTPS/API"
        viora.api -> mapbox         "Uses maps and geocoding services" "HTTPS/JSON"
        viora.api -> cloudinary     "Uploads and delivers profile/evidence media" "HTTPS/API"
        viora.api -> senasa         "Consults official phytosanitary information and reference data" "HTTPS/Open data"
        
        // Relaciones de los componentes
        viora.webapp -> viora.api.iam         "Authenticates users and validates sessions" "JSON/HTTPS"
        viora.webapp -> viora.api.profile     "Manages profile data" "JSON/HTTPS"
        viora.webapp -> viora.api.plots       "Registers plots and traceability records" "JSON/HTTPS"
        viora.webapp -> viora.api.monitoring  "Requests dashboard climate and satellite data" "JSON/HTTPS"
        viora.webapp -> viora.api.marketplace "Manages specialist search and interventions" "JSON/HTTPS"
        viora.webapp -> viora.api.billing     "Manages subscriptions and payments" "JSON/HTTPS"

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

        viora.api.monitoring   -> agromonitoring "Retrieves weather, forecast, historical climate, satellite and NDVI data" "HTTPS/JSON"
        viora.api.plots        -> mapbox         "Uses maps and geocoding for plot location" "HTTPS/JSON"
        viora.api.billing      -> mercadopago    "Processes payments and receives payment webhooks" "HTTPS/JSON"
        viora.api.alerts       -> brevo          "Sends transactional email notifications" "HTTPS/API"
        viora.api.integrations -> cloudinary     "Uploads and retrieves media assets" "HTTPS/API"
        viora.api.alerts       -> senasa         "Consults official phytosanitary reference data" "HTTPS/Open data"
        
        // Relaciones hacia containers internos de almacenamiento
        viora.api.repositories -> viora.db "Persists and retrieves relational domain data" "ADO.NET"
        viora.api.repositories -> viora.media "Stores media references and asset metadata" "HTTPS/API"

        viora.api.integrations -> viora.media "Stores and retrieves field evidence and profile media" "HTTPS/API"
        viora.media -> cloudinary "Delegates media storage and delivery" "HTTPS/API"
        
        // Relaciones de Web Application Components
        producer   -> viora.webapp.authui        "Signs in and recovers account access"
        specialist -> viora.webapp.authui        "Signs in and recovers account access"

        producer   -> viora.webapp.dashboardui   "Views farm dashboard, monitoring and alerts"
        specialist -> viora.webapp.dashboardui   "Views cases, monitoring insights and alerts"

        producer   -> viora.webapp.plotsui       "Registers plots and agronomic traceability"
        specialist -> viora.webapp.marketplaceui "Manages interventions and technical cases"

        producer   -> viora.webapp.billingui     "Manages subscription, trial and payments"
        producer   -> viora.webapp.profileui     "Updates producer profile"
        specialist -> viora.webapp.profileui     "Updates specialist profile"

        viora.landing -> viora.webapp.routing "Redirects authenticated users to"

        viora.webapp.routing       -> viora.webapp.authui         "Protects access to"
        viora.webapp.routing       -> viora.webapp.dashboardui    "Routes authenticated users to"
        viora.webapp.routing       -> viora.webapp.plotsui        "Routes users to"
        viora.webapp.routing       -> viora.webapp.marketplaceui  "Routes users to"
        viora.webapp.routing       -> viora.webapp.billingui      "Routes users to"
        viora.webapp.routing       -> viora.webapp.profileui      "Routes users to"

        viora.webapp.authui         -> viora.webapp.apiclient "Sends sign-in and recovery requests"
        viora.webapp.dashboardui    -> viora.webapp.apiclient "Requests dashboard, climate and alert data"
        viora.webapp.plotsui        -> viora.webapp.apiclient "Sends plot and traceability data"
        viora.webapp.marketplaceui  -> viora.webapp.apiclient "Requests specialist and intervention data"
        viora.webapp.billingui      -> viora.webapp.apiclient "Requests subscription and payment data"
        viora.webapp.profileui      -> viora.webapp.apiclient "Requests and updates profile data"
        viora.webapp.notificationsui -> viora.webapp.apiclient "Loads alert notifications"

        viora.webapp.dashboardui    -> viora.webapp.notificationsui "Displays alert summaries from"

        viora.webapp.authui         -> viora.webapp.sharedui "Uses authentication forms and dialogs"
        viora.webapp.dashboardui    -> viora.webapp.sharedui "Uses charts, cards and layout"
        viora.webapp.plotsui        -> viora.webapp.sharedui "Uses forms, dialogs and reusable widgets"
        viora.webapp.marketplaceui  -> viora.webapp.sharedui "Uses lists, dialogs and reusable widgets"
        viora.webapp.billingui      -> viora.webapp.sharedui "Uses payment and plan widgets"
        viora.webapp.profileui      -> viora.webapp.sharedui "Uses profile forms and reusable widgets"
        viora.webapp.notificationsui -> viora.webapp.sharedui "Uses reusable notification widgets"

        viora.webapp.apiclient -> viora.api "Makes API requests to" "JSON/HTTPS"
     
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
        systemContext viora "VioraSystemContext" {
            include *
            autoLayout tb 200 150
        }

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