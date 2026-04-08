# perfumegpt_ai_api_client

Auto-generated API client for PerfumeGPT AI services using OpenAPI Generator.

## Features

- AI Survey interaction
- Chatbot consultation
- Personalized recommendations

## Setup

This package is managed as part of the PerfumeGPT monorepo.

### Regeneration

To regenerate the API client when the schema changes:

1. Update `v1.json` in this directory.
2. Run the following command from the root of the monorepo:
   ```bash
   openapi-generator-cli generate -i packages/perfumegpt_ai_api_client/v1.json -g dart-dio -o packages/perfumegpt_ai_api_client --additional-properties "pubName=perfumegpt_ai_api_client,serializationLibrary=json_serializable" --skip-validate-spec
   ```
3. Run `melos bootstrap`.
4. Run `melos exec --scope="perfumegpt_ai_api_client" -- "dart run build_runner build --delete-conflicting-outputs"`.

## Usage

```dart
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';
import 'package:dio/dio.dart';

final dio = Dio();
final apiClient = perfumegpt_ai_api_client(dio: dio);

// Use the generated APIs
// final scentNotesApi = apiClient.getScentNotesApi();
```
