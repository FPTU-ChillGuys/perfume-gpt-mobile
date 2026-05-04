# PerfumeGPT Staff App

AI-Powered Staff Mobile App for the PerfumeGPT ecosystem, providing Mobile POS and Stock Management capabilities.

## Features

-   **Mobile POS:**
    -   Quick variant/barcode entry and manual SKU lookup.
    -   **Batch Selection:** Real-time batch lookup for product variants, ensuring accurate inventory and expiry tracking during sales.
    -   Real-time cart management with quantity adjustments and persistent sync to customer-facing displays.
    -   **QR Payment Handling:** Integrated checkout flow with generated QR codes for VnPay and Momo, including deep-link support for direct payment.
    -   Type-safe checkout flow integrated with backend `OrdersApi`.
-   **Stock Management:**
    -   Real-time inventory list with search and filtering by SKU, name, or brand.
    -   Detailed product views including current stock levels and pricing fetched from the API.
    -   **Receive Import Stock:** Complete workflow for verifying incoming stock, including barcode scanning for quick lookup, batch code entry, and expiry tracking (NSX/HSD).
    -   Direct stock adjustments with reason codes (Found, Loss) synchronized with backend.
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
