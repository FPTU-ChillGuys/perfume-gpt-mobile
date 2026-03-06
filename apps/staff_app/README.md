# PerfumeGPT Staff App

AI-Powered Staff Mobile App for the PerfumeGPT ecosystem, providing Mobile POS and Stock Management capabilities.

## Features

-   **Mobile POS:**
    -   Quick SKU entry and barcode scanning interface (placeholder).
    -   Real-time cart management with quantity adjustments.
    -   Checkout flow supporting multiple payment methods (Cash, Card, E-Wallet).
-   **Stock Management:**
    -   Real-time inventory list with search and filtering by SKU, name, or brand.
    -   Detailed product views including current stock levels and scent profiles.
    -   Direct stock adjustments with reason codes (Restock, Damage, Return).
-   **Architecture:**
    -   Built with Flutter following **Clean Architecture** principles.
    -   State management powered by **Riverpod** with code generation.
    -   Declarative navigation using **GoRouter**.
    -   Type-safe data models using **Freezed** and **JSON Serializable**.

## Project Structure

```text
lib/
â”œâ”€â”€ core/             # Application-wide themes, routing, and utilities
â”‚   â”œâ”€â”€ router/       # GoRouter configuration
â”‚   â”œâ”€â”€ theme/        # Material 3 theme definitions
â”‚   â””â”€â”€ utils/        # Shared utilities (Dio client, etc.)
â”œâ”€â”€ data/             # Data layer implementations
â”‚   â”œâ”€â”€ models/       # Data models (DTOs)
â”‚   â””â”€â”€ repositories/ # Repository implementations (Mock for now)
â”œâ”€â”€ domain/           # Business logic layer
â”‚   â”œâ”€â”€ entities/     # Pure Dart entities
â”‚   â””â”€â”€ repositories/ # Abstract repository interfaces
â””â”€â”€ features/         # Feature-based modules
    â”œâ”€â”€ inventory/    # Inventory listing and stock adjustment
    â””â”€â”€ pos/          # Point of Sale and Cart management
```

## Setup & Running

1.  **Dependencies:** Ensure Flutter is installed.
2.  **Code Generation:** Run `dart run build_runner build --delete-conflicting-outputs` to generate the necessary Riverpod and Freezed files.
3.  **Run:** Execute `flutter run` to launch the app on your preferred device.

## Future Roadmap

-   Full integration with hardware barcode scanners.
-   Bluetooth thermal printer integration for receipt printing.
-   Quick customer consultation tool powered by AI.
-   Real-time synchronization with the backend API.
