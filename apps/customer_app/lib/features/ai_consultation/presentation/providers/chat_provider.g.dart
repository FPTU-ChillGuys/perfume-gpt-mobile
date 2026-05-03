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

String _$chatSessionHash() => r'7f2f4dba1318bc4786426a41d4e549184e6770cd';

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
