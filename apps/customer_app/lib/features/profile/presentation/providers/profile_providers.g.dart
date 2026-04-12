// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(profileRepository)
final profileRepositoryProvider = ProfileRepositoryProvider._();

final class ProfileRepositoryProvider
    extends
        $FunctionalProvider<
          ProfileRepository,
          ProfileRepository,
          ProfileRepository
        >
    with $Provider<ProfileRepository> {
  ProfileRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileRepositoryHash();

  @$internal
  @override
  $ProviderElement<ProfileRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProfileRepository create(Ref ref) {
    return profileRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProfileRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProfileRepository>(value),
    );
  }
}

String _$profileRepositoryHash() => r'76a1bd86b76b5a78d7592ece7444c3b2c5ccb3bc';

@ProviderFor(scentNotesLookup)
final scentNotesLookupProvider = ScentNotesLookupProvider._();

final class ScentNotesLookupProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ScentNoteLookup>>,
          List<ScentNoteLookup>,
          FutureOr<List<ScentNoteLookup>>
        >
    with
        $FutureModifier<List<ScentNoteLookup>>,
        $FutureProvider<List<ScentNoteLookup>> {
  ScentNotesLookupProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'scentNotesLookupProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$scentNotesLookupHash();

  @$internal
  @override
  $FutureProviderElement<List<ScentNoteLookup>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ScentNoteLookup>> create(Ref ref) {
    return scentNotesLookup(ref);
  }
}

String _$scentNotesLookupHash() => r'1dddbb3e25069b56602928cb1db72ce88ef388c5';

@ProviderFor(olfactoryFamiliesLookup)
final olfactoryFamiliesLookupProvider = OlfactoryFamiliesLookupProvider._();

final class OlfactoryFamiliesLookupProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<OlfactoryFamilyLookup>>,
          List<OlfactoryFamilyLookup>,
          FutureOr<List<OlfactoryFamilyLookup>>
        >
    with
        $FutureModifier<List<OlfactoryFamilyLookup>>,
        $FutureProvider<List<OlfactoryFamilyLookup>> {
  OlfactoryFamiliesLookupProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'olfactoryFamiliesLookupProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$olfactoryFamiliesLookupHash();

  @$internal
  @override
  $FutureProviderElement<List<OlfactoryFamilyLookup>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<OlfactoryFamilyLookup>> create(Ref ref) {
    return olfactoryFamiliesLookup(ref);
  }
}

String _$olfactoryFamiliesLookupHash() =>
    r'd32722244566c428f5401900e07c6fced2c256d0';

@ProviderFor(attributesLookup)
final attributesLookupProvider = AttributesLookupProvider._();

final class AttributesLookupProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<({int id, String name})>>,
          List<({int id, String name})>,
          FutureOr<List<({int id, String name})>>
        >
    with
        $FutureModifier<List<({int id, String name})>>,
        $FutureProvider<List<({int id, String name})>> {
  AttributesLookupProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'attributesLookupProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$attributesLookupHash();

  @$internal
  @override
  $FutureProviderElement<List<({int id, String name})>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<({int id, String name})>> create(Ref ref) {
    return attributesLookup(ref);
  }
}

String _$attributesLookupHash() => r'2886dae08cae0ee34817d89788c6a4ed9cc9cdee';

@ProviderFor(attributeValuesLookup)
final attributeValuesLookupProvider = AttributeValuesLookupFamily._();

final class AttributeValuesLookupProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<AttributeValueLookup>>,
          List<AttributeValueLookup>,
          FutureOr<List<AttributeValueLookup>>
        >
    with
        $FutureModifier<List<AttributeValueLookup>>,
        $FutureProvider<List<AttributeValueLookup>> {
  AttributeValuesLookupProvider._({
    required AttributeValuesLookupFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'attributeValuesLookupProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$attributeValuesLookupHash();

  @override
  String toString() {
    return r'attributeValuesLookupProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<AttributeValueLookup>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<AttributeValueLookup>> create(Ref ref) {
    final argument = this.argument as int;
    return attributeValuesLookup(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is AttributeValuesLookupProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$attributeValuesLookupHash() =>
    r'f08ab79d38c94d763aea5ccf42a0d9add68fe432';

final class AttributeValuesLookupFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<AttributeValueLookup>>, int> {
  AttributeValuesLookupFamily._()
    : super(
        retry: null,
        name: r'attributeValuesLookupProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AttributeValuesLookupProvider call(int attributeId) =>
      AttributeValuesLookupProvider._(argument: attributeId, from: this);

  @override
  String toString() => r'attributeValuesLookupProvider';
}

@ProviderFor(ProfileController)
final profileControllerProvider = ProfileControllerProvider._();

final class ProfileControllerProvider
    extends $AsyncNotifierProvider<ProfileController, UserProfile> {
  ProfileControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileControllerHash();

  @$internal
  @override
  ProfileController create() => ProfileController();
}

String _$profileControllerHash() => r'27268a769ea01dc71846d3457fb7672b9344b50e';

abstract class _$ProfileController extends $AsyncNotifier<UserProfile> {
  FutureOr<UserProfile> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<UserProfile>, UserProfile>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<UserProfile>, UserProfile>,
              AsyncValue<UserProfile>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
