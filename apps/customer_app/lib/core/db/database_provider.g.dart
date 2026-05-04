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
        isAutoDispose: false,
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

String _$appDatabaseHash() => r'448adad5717e7b1c0b3ca3ca7e03d0b2116237af';

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

String _$conversationDaoHash() => r'b7ebb1cee095723d3310e35344c8e35f26f84ffd';

@ProviderFor(surveyDao)
final surveyDaoProvider = SurveyDaoProvider._();

final class SurveyDaoProvider
    extends $FunctionalProvider<SurveyDao, SurveyDao, SurveyDao>
    with $Provider<SurveyDao> {
  SurveyDaoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'surveyDaoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$surveyDaoHash();

  @$internal
  @override
  $ProviderElement<SurveyDao> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SurveyDao create(Ref ref) {
    return surveyDao(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SurveyDao value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SurveyDao>(value),
    );
  }
}

String _$surveyDaoHash() => r'fc9c0691f5a77332af37bdde7017cc97ed8fb7e1';
