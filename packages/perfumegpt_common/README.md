# perfumegpt_common

Common library for PerfumeGPT mobile applications.

## Features

- **Authentication**: Centralized `authProvider` managing login, registration, and Google Sign-In.
- **API Client**: Shared API client configuration and providers.
- **Storage**: Secure storage utilities for JWT tokens and other sensitive data.

## Google Sign-In Setup

This package uses `google_sign_in` version 7.x. 

To use Google Sign-In in applications depending on this package:
1. Register your apps in the Google Cloud Console.
2. For Android: Provide the SHA-1 fingerprint.
3. For iOS/macOS: Add the `REVERSED_CLIENT_ID` to `Info.plist`.
4. (Optional) Provide `serverClientId` during initialization if required by the backend for ID token verification.
