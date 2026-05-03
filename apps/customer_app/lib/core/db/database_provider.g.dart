// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appDatabase)
final appDatabaseProvider = AppDatabaseProvider._();

final class AppDatabaseProvider
    extends $FunctionalProvider<AppDatabase, AppDatabase, AppDatabase>
    with $Provider<AppDatabase> {
  AppDatabaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appDatabaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appDatabaseHash();

  @$internal
  @override
  $ProviderElement<AppDatabase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppDatabase create(Ref ref) {
    return appDatabase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppDatabase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppDatabase>(value),
    );
  }
}

String _$appDatabaseHash() => r'18ce5c8c4d8ddbfe5a7d819d8fb7d5aca76bf416';

@ProviderFor(conversationDao)
final conversationDaoProvider = ConversationDaoProvider._();

final class ConversationDaoProvider
    extends
        $FunctionalProvider<ConversationDao, ConversationDao, ConversationDao>
    with $Provider<ConversationDao> {
  ConversationDaoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'conversationDaoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$conversationDaoHash();

  @$internal
  @override
  $ProviderElement<ConversationDao> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ConversationDao create(Ref ref) {
    return conversationDao(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ConversationDao value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ConversationDao>(value),
    );
  }
}

String _$conversationDaoHash() => r'8309b5e338676750d57fdc44de6106a1616a1655';
