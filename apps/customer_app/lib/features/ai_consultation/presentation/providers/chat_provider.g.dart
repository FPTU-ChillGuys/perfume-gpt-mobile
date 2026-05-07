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
    extends $AsyncNotifierProvider<ChatSession, List<Message>> {
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
}

String _$chatSessionHash() => r'4a5ee868b7b8baecf52c84e986b2cec8ac5d4e2e';

abstract class _$ChatSession extends $AsyncNotifier<List<Message>> {
  FutureOr<List<Message>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Message>>, List<Message>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Message>>, List<Message>>,
              AsyncValue<List<Message>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
