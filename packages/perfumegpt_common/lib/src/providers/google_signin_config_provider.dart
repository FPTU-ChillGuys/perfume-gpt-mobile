import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'google_signin_config_provider.g.dart';

@riverpod
String? googleSignInServerClientId(Ref ref) {
  // To be overridden by apps in ProviderScope
  return null;
}
