// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: type=lint, type=warning

@ProviderFor(profileRepository)
final profileRepositoryProvider = ProfileRepositoryProvider._();

final class ProfileRepositoryProvider
    extends $FunctionalProvider<ProfileRepository, ProfileRepository, ProfileRepository>
    with $Provider<ProfileRepository> {
  ProfileRepositoryProvider._()
    : super(
        from: null, argument: null, retry: null,
        name: r'profileRepositoryProvider', isAutoDispose: true,
        dependencies: null, $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileRepositoryHash();

  @$internal
  @override
  $ProviderElement<ProfileRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ProfileRepository create(Ref ref) => profileRepository(ref);
}

String _$profileRepositoryHash() => r'profile_repo_hash_placeholder';

@ProviderFor(ProfileNotifier)
final profileNotifierProvider = ProfileNotifierProvider._();

final class ProfileNotifierProvider extends $AsyncNotifierProvider<ProfileNotifier, UserProfile> {
  ProfileNotifierProvider._()
    : super(
        from: null, argument: null, retry: null,
        name: r'profileNotifierProvider', isAutoDispose: true,
        dependencies: null, $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileNotifierHash();

  @$internal
  @override
  ProfileNotifier create() => ProfileNotifier();
}

String _$profileNotifierHash() => r'profile_notifier_hash_placeholder';

abstract class _$ProfileNotifier extends $AsyncNotifier<UserProfile> {
  FutureOr<UserProfile> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<UserProfile>, UserProfile>;
    final element = ref.element
        as $ClassProviderElement<
          AnyNotifier<AsyncValue<UserProfile>, UserProfile>,
          AsyncValue<UserProfile>, Object?, Object?>;
    element.handleCreate(ref, build);
  }
}
