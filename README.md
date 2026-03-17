# PerfumeGPT Mobile

PerfumeGPT is an AI-powered perfume consultation and retail management ecosystem. This repository contains the mobile applications built with Flutter

## Project Structure

This project follows a monorepo structure to facilitate code sharing and consistent architectural patterns across different applications:

```text
.
├── apps/
│   ├── customer_app/       # AI-driven fragrance shopping & e-commerce for users
│   └── staff_app/          # Mobile POS & Inventory management for retail staff
└── packages/
    └── perfumegpt_api_client/ # Shared API client generated from OpenAPI
```

### Applications

- **[Customer App](./apps/customer_app):** Provides a personalized fragrance shopping experience through AI-driven chat, interactive scent quizzes, and a full e-commerce journey (browsing, ordering, tracking) with local Vietnamese payment and shipping integrations.
- **[Staff App](./apps/staff_app):** Empowers retail staff with mobile POS capabilities, real-time stock checking, and inventory adjustment tools to streamline in-store operations.

### Packages

- **[PerfumeGPT API Client](./packages/perfumegpt_api_client):** A Dio-based Dart API client automatically generated from the backend's OpenAPI specification

## Tech Stack

- **Framework:** [Flutter](https://flutter.dev/)
- **State Management:** [Riverpod](https://riverpod.dev/) (with code generation)
- **Architecture:** Clean Architecture (Presentation, Domain, Data layers)
- **Navigation:** [GoRouter](https://pub.dev/packages/go_router)
- **Networking:** [Dio](https://pub.dev/packages/dio)
- **Monorepo Management:** [Melos](https://melos.invertase.dev/)
- **Data Modeling:** [Freezed](https://pub.dev/packages/freezed) & [JSON Serializable](https://pub.dev/packages/json_serializable)

## Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (matching the version in `pubspec.yaml`)
- [Melos](https://melos.invertase.dev/getting-started) (installed globally: `dart pub global activate melos`)

### Setup

1. Clone the repository
2. Bootstrap the project to install all dependencies and link packages:
   ```bash
   melos bootstrap
   ```

## Development Scripts

The project uses Melos to manage common tasks across all packages. You can run these from the root directory:

| Command | Description |
|---------|-------------|
| `melos run get` | Run `flutter pub get` in all packages |
| `melos run analyze` | Run static analysis (`flutter analyze`) across the workspace |
| `melos run test` | Run tests in all packages |
| `melos run clean` | Run `flutter clean` in all packages |
| `melos run generate-api` | Regenerate the OpenAPI client and run `build_runner` |

## Key Features

### Customer App
- **AI Scent Consultant:** Personalized recommendations via natural language chat
- **Interactive Quiz:** 5-question flow to discover scent profiles
- **E-commerce:** Full catalog, secure checkout (VNPay/Momo), and order tracking (GHN/GHTK)

### Staff App
- **Mobile POS:** Quick barcode scanning and receipt printing for in-store sales
- **Inventory Management:** Real-time stock lookups and manual adjustments
- **Stock-In Flow:** Streamlined process for receiving new shipments
