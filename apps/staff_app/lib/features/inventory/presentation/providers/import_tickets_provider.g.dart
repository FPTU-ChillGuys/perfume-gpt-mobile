// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_tickets_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(importTickets)
final importTicketsProvider = ImportTicketsFamily._();

final class ImportTicketsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ImportTicketListItem>>,
          List<ImportTicketListItem>,
          FutureOr<List<ImportTicketListItem>>
        >
    with
        $FutureModifier<List<ImportTicketListItem>>,
        $FutureProvider<List<ImportTicketListItem>> {
  ImportTicketsProvider._({
    required ImportTicketsFamily super.from,
    required ImportStatus? super.argument,
  }) : super(
         retry: null,
         name: r'importTicketsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$importTicketsHash();

  @override
  String toString() {
    return r'importTicketsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<ImportTicketListItem>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ImportTicketListItem>> create(Ref ref) {
    final argument = this.argument as ImportStatus?;
    return importTickets(ref, status: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ImportTicketsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$importTicketsHash() => r'cb6bcfe678e41c2c59d85e3fc8dbd599fbd97c7c';

final class ImportTicketsFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<ImportTicketListItem>>,
          ImportStatus?
        > {
  ImportTicketsFamily._()
    : super(
        retry: null,
        name: r'importTicketsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ImportTicketsProvider call({ImportStatus? status}) =>
      ImportTicketsProvider._(argument: status, from: this);

  @override
  String toString() => r'importTicketsProvider';
}
