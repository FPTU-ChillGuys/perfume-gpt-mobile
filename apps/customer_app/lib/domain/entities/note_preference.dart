class NotePreference {
  final int noteId;
  final String name;
  final String? type; // 'Top', 'Heart', 'Base'

  const NotePreference({
    required this.noteId,
    required this.name,
    this.type,
  });
}

class FamilyPreference {
  final int familyId;
  final String name;

  const FamilyPreference({required this.familyId, required this.name});
}

class AttributePreference {
  final int attributeValueId;
  final String name;

  const AttributePreference({required this.attributeValueId, required this.name});
}

class ScentNoteLookup {
  final int id;
  final String name;

  const ScentNoteLookup({required this.id, required this.name});
}

class OlfactoryFamilyLookup {
  final int id;
  final String name;

  const OlfactoryFamilyLookup({required this.id, required this.name});
}

class AttributeValueLookup {
  final int id;
  final String name;

  const AttributeValueLookup({required this.id, required this.name});
}
