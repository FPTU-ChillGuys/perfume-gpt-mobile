// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatSessionHash() => r'5cd2fb6306c3b0fba2c61dc100a675c5d6d53581';

/// See also [ChatSession].
@ProviderFor(ChatSession)
final chatSessionProvider =
    AutoDisposeNotifierProvider<ChatSession, List<types.Message>>.internal(
      ChatSession.new,
      name: r'chatSessionProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$chatSessionHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ChatSession = AutoDisposeNotifier<List<types.Message>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
