// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChatSession)
final chatSessionProvider = ChatSessionProvider._();

final class ChatSessionProvider
    extends $NotifierProvider<ChatSession, List<types.Message>> {
  ChatSessionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'chatSessionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$chatSessionHash();

  @$internal
  @override
  ChatSession create() => ChatSession();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<types.Message> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<types.Message>>(value),
    );
  }
}

String _$chatSessionHash() => r'5cd2fb6306c3b0fba2c61dc100a675c5d6d53581';

abstract class _$ChatSession extends $Notifier<List<types.Message>> {
  List<types.Message> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<List<types.Message>, List<types.Message>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<types.Message>, List<types.Message>>,
              List<types.Message>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
