import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../domain/entities/note_preference.dart';
import '../providers/profile_providers.dart';

final _currencyFmt = NumberFormat('#,###', 'vi_VN');
String _fmtCurrency(num v) => '${_currencyFmt.format(v)} ₫';

class ScentPreferencesPage extends ConsumerStatefulWidget {
  const ScentPreferencesPage({super.key});

  @override
  ConsumerState<ScentPreferencesPage> createState() =>
      _ScentPreferencesPageState();
}

class _ScentPreferencesPageState extends ConsumerState<ScentPreferencesPage> {
  bool _isEditing = false;
  bool _isSaving = false;
  bool _lookupsLoaded = false;

  // Form state
  String _minBudget = '';
  String _maxBudget = '';
  List<_NoteWithType> _selectedNotes = [];
  List<int> _selectedFamilyIds = [];
  List<int> _selectedAttrValueIds = [];

  // Lookup data (loaded once on edit)
  List<ScentNoteLookup> _allNotes = [];
  List<OlfactoryFamilyLookup> _allFamilies = [];
  List<({int id, String name})> _allAttributes = [];
  Map<int, List<AttributeValueLookup>> _allAttrValues = {};

  void _resetFromProfile() {
    final profile = ref.read(profileControllerProvider).value;
    if (profile == null) return;
    _minBudget = profile.minBudget?.toStringAsFixed(0) ?? '';
    _maxBudget = profile.maxBudget?.toStringAsFixed(0) ?? '';
    _selectedNotes = profile.notePreferences
        .map((n) => _NoteWithType(n.noteId, n.type ?? 'Top', n.name))
        .toList();
    _selectedFamilyIds = profile.familyPreferences
        .map((f) => f.familyId)
        .toList();
    _selectedAttrValueIds = profile.attributePreferences
        .map((a) => a.attributeValueId)
        .toList();
  }

  Future<void> _loadLookups() async {
    if (_lookupsLoaded) return;
    final repo = ref.read(profileRepositoryProvider);
    final results = await Future.wait([
      repo.getScentNotesLookup(),
      repo.getOlfactoryFamiliesLookup(),
      repo.getAttributesLookup(),
    ]);
    _allNotes = results[0] as List<ScentNoteLookup>;
    _allFamilies = results[1] as List<OlfactoryFamilyLookup>;
    _allAttributes = results[2] as List<({int id, String name})>;

    final valuesMap = <int, List<AttributeValueLookup>>{};
    await Future.wait(
      _allAttributes.map((attr) async {
        try {
          valuesMap[attr.id] = await repo.getAttributeValuesLookup(attr.id);
        } catch (_) {}
      }),
    );
    _allAttrValues = valuesMap;
    _lookupsLoaded = true;
  }

  Future<void> _startEditing() async {
    _resetFromProfile();
    setState(() => _isEditing = true);
    if (!_lookupsLoaded) {
      await _loadLookups();
      if (mounted) setState(() {});
    }
  }

  void _cancelEditing() {
    _resetFromProfile();
    setState(() => _isEditing = false);
  }

  Future<void> _save() async {
    setState(() => _isSaving = true);
    try {
      final profile = ref.read(profileControllerProvider).value;
      await ref
          .read(profileControllerProvider.notifier)
          .updateProfile(
            dateOfBirth: profile?.dateOfBirth,
            minBudget: _minBudget.isNotEmpty ? num.tryParse(_minBudget) : null,
            maxBudget: _maxBudget.isNotEmpty ? num.tryParse(_maxBudget) : null,
            notePreferences: _selectedNotes
                .map(
                  (n) => NotePreference(
                    noteId: n.noteId,
                    name: n.noteName,
                    type: n.noteType,
                  ),
                )
                .toList(),
            familyPreferenceIds: _selectedFamilyIds.isNotEmpty
                ? _selectedFamilyIds
                : null,
            attributePreferenceIds: _selectedAttrValueIds.isNotEmpty
                ? _selectedAttrValueIds
                : null,
          );
      if (mounted) {
        setState(() => _isEditing = false);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Cập nhật sở thích thành công'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Lỗi: $e'), backgroundColor: Colors.red),
        );
      }
    } finally {
      if (mounted) setState(() => _isSaving = false);
    }
  }

  // ── Toggle helpers ──
  void _toggleFamily(int id) {
    setState(() {
      if (_selectedFamilyIds.contains(id)) {
        _selectedFamilyIds.remove(id);
      } else {
        _selectedFamilyIds.add(id);
      }
    });
  }

  void _toggleNote(int noteId, String noteType, String noteName) {
    setState(() {
      final idx = _selectedNotes.indexWhere(
        (s) => s.noteId == noteId && s.noteType == noteType,
      );
      if (idx >= 0) {
        _selectedNotes.removeAt(idx);
      } else {
        _selectedNotes.add(_NoteWithType(noteId, noteType, noteName));
      }
    });
  }

  void _toggleAttrValue(int id) {
    setState(() {
      if (_selectedAttrValueIds.contains(id)) {
        _selectedAttrValueIds.remove(id);
      } else {
        _selectedAttrValueIds.add(id);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final profileAsync = ref.watch(profileControllerProvider);

    return Scaffold(
      backgroundColor: AppColors.surface,
      body: CustomScrollView(
        slivers: [
          // ── Hero header ──
          SliverAppBar(
            expandedHeight: 160,
            pinned: true,
            backgroundColor: AppColors.primaryDark,
            foregroundColor: Colors.white,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            title: const Text(
              'Sở thích & Ngân sách',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [AppColors.heroStart, AppColors.heroEnd],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: const SafeArea(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(24, 60, 24, 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.spa_rounded,
                          size: 36,
                          color: Colors.white70,
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Sở thích & Ngân sách',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            actions: [
              if (!_isEditing)
                IconButton(
                  icon: const Icon(Icons.edit_outlined),
                  onPressed: profileAsync.hasValue ? _startEditing : null,
                ),
            ],
          ),

          // ── Content ──
          profileAsync.when(
            data: (profile) =>
                _isEditing ? _buildEditView() : _buildReadView(profile),
            loading: () => const SliverFillRemaining(
              child: Center(
                child: CircularProgressIndicator(color: AppColors.primary),
              ),
            ),
            error: (e, _) =>
                SliverFillRemaining(child: Center(child: Text('Lỗi: $e'))),
          ),
        ],
      ),
    );
  }

  // ═══════════════════════════════════════════════════════════════════════
  // READ-ONLY VIEW
  // ═══════════════════════════════════════════════════════════════════════

  Widget _buildReadView(dynamic profile) {
    final budgetMin = profile.minBudget != null
        ? _fmtCurrency(profile.minBudget!)
        : null;
    final budgetMax = profile.maxBudget != null
        ? _fmtCurrency(profile.maxBudget!)
        : null;
    String? budgetText;
    if (budgetMin != null && budgetMax != null) {
      budgetText = '$budgetMin – $budgetMax';
    } else if (budgetMin != null) {
      budgetText = 'Từ $budgetMin';
    } else if (budgetMax != null) {
      budgetText = 'Đến $budgetMax';
    }

    final hasNotes = profile.notePreferences.isNotEmpty;
    final hasFamilies = profile.familyPreferences.isNotEmpty;
    final hasAttrs = profile.attributePreferences.isNotEmpty;
    final hasPreferences =
        budgetText != null || hasNotes || hasFamilies || hasAttrs;

    final topNotes = profile.notePreferences
        .where((NotePreference n) => n.type == 'Top')
        .toList();
    final heartNotes = profile.notePreferences
        .where((NotePreference n) => n.type == 'Heart')
        .toList();
    final baseNotes = profile.notePreferences
        .where((NotePreference n) => n.type == 'Base')
        .toList();

    if (!hasPreferences) {
      return SliverPadding(
        padding: const EdgeInsets.all(16),
        sliver: SliverToBoxAdapter(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 48),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: AppColors.border,
                style: BorderStyle.none,
              ),
            ),
            child: Column(
              children: [
                Icon(Icons.eco_outlined, size: 52, color: Colors.grey.shade400),
                const SizedBox(height: 12),
                const Text(
                  'Chưa thiết lập sở thích hương và ngân sách.',
                  style: TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _startEditing,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('Thiết lập ngay'),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return SliverPadding(
      padding: const EdgeInsets.all(16),
      sliver: SliverList(
        delegate: SliverChildListDelegate([
          // ── Budget Card ──
          if (budgetText != null) ...[
            _ReadCard(
              color: Colors.orange,
              icon: Icons.account_balance_wallet_outlined,
              label: 'NGÂN SÁCH NƯỚC HOA',
              child: Text(
                budgetText,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(height: 12),
          ],

          // ── Olfactory Families Card ──
          if (hasFamilies) ...[
            _ReadCard(
              color: AppColors.primary,
              icon: Icons.local_florist_outlined,
              label: 'NHÓM HƯƠNG YÊU THÍCH',
              child: Wrap(
                spacing: 6,
                runSpacing: 6,
                children: profile.familyPreferences
                    .map<Widget>(
                      (FamilyPreference f) => Chip(
                        label: Text(f.name),
                        labelStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                        backgroundColor: AppColors.primaryLight,
                        side: BorderSide.none,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        visualDensity: VisualDensity.compact,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            const SizedBox(height: 12),
          ],

          // ── Scent Notes Card ──
          if (hasNotes) ...[
            _ReadCard(
              color: AppColors.primary,
              icon: Icons.spa_outlined,
              label: 'NỐT HƯƠNG ƯA THÍCH',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (topNotes.isNotEmpty) ...[
                    _NoteGroup(
                      label: 'Hương đầu',
                      notes: topNotes,
                      color: Colors.green,
                    ),
                    const SizedBox(height: 8),
                  ],
                  if (heartNotes.isNotEmpty) ...[
                    _NoteGroup(
                      label: 'Hương giữa',
                      notes: heartNotes,
                      color: Colors.red,
                    ),
                    const SizedBox(height: 8),
                  ],
                  if (baseNotes.isNotEmpty)
                    _NoteGroup(
                      label: 'Hương cuối',
                      notes: baseNotes,
                      color: Colors.amber.shade800,
                    ),
                ],
              ),
            ),
            const SizedBox(height: 12),
          ],

          // ── Attribute Preferences Card ──
          if (hasAttrs) ...[
            _ReadCard(
              color: Colors.blue,
              icon: Icons.style_outlined,
              label: 'THUỘC TÍNH YÊU THÍCH',
              child: Wrap(
                spacing: 6,
                runSpacing: 6,
                children: profile.attributePreferences
                    .map<Widget>(
                      (AttributePreference a) => Chip(
                        label: Text(a.name),
                        labelStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                        backgroundColor: Colors.blue.shade50,
                        side: BorderSide.none,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        visualDensity: VisualDensity.compact,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ]),
      ),
    );
  }

  // ═══════════════════════════════════════════════════════════════════════
  // EDIT VIEW
  // ═══════════════════════════════════════════════════════════════════════

  Widget _buildEditView() {
    if (!_lookupsLoaded) {
      return const SliverFillRemaining(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(color: AppColors.primary),
              SizedBox(height: 12),
              Text(
                'Đang tải danh mục...',
                style: TextStyle(color: AppColors.textSecondary),
              ),
            ],
          ),
        ),
      );
    }

    return SliverPadding(
      padding: const EdgeInsets.all(16),
      sliver: SliverList(
        delegate: SliverChildListDelegate([
          // ── Action buttons ──
          Row(
            children: [
              const Spacer(),
              OutlinedButton.icon(
                onPressed: _isSaving ? null : _cancelEditing,
                icon: const Icon(Icons.close, size: 18),
                label: const Text('Huỷ'),
                style: OutlinedButton.styleFrom(
                  foregroundColor: AppColors.textSecondary,
                  side: const BorderSide(color: AppColors.border),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              ElevatedButton.icon(
                onPressed: _isSaving ? null : _save,
                icon: _isSaving
                    ? const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      )
                    : const Icon(Icons.save_outlined, size: 18),
                label: const Text('Lưu thay đổi'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // ═══ BUDGET SECTION ═══
          _EditCard(
            color: Colors.orange,
            icon: Icons.account_balance_wallet_outlined,
            title: 'Ngân sách nước hoa',
            child: Column(
              children: [
                // Slider
                _BudgetSlider(
                  min: _minBudget.isNotEmpty
                      ? (num.tryParse(_minBudget) ?? 0).toDouble()
                      : 0,
                  max: _maxBudget.isNotEmpty
                      ? (num.tryParse(_maxBudget) ?? 10000000).toDouble()
                      : 10000000,
                  onChanged: (lo, hi) => setState(() {
                    _minBudget = lo.toInt().toString();
                    _maxBudget = hi.toInt().toString();
                  }),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: TextEditingController(text: _minBudget)
                          ..selection = TextSelection.collapsed(
                            offset: _minBudget.length,
                          ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: const InputDecoration(
                          labelText: 'Tối thiểu',
                          suffixText: '₫',
                          isDense: true,
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (v) => setState(() => _minBudget = v),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: TextField(
                        controller: TextEditingController(text: _maxBudget)
                          ..selection = TextSelection.collapsed(
                            offset: _maxBudget.length,
                          ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: const InputDecoration(
                          labelText: 'Tối đa',
                          suffixText: '₫',
                          isDense: true,
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (v) => setState(() => _maxBudget = v),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),

          // ═══ OLFACTORY FAMILIES ═══
          _EditCard(
            color: AppColors.primary,
            icon: Icons.local_florist_outlined,
            title: 'Nhóm hương yêu thích',
            subtitle: 'Chọn các nhóm hương bạn yêu thích',
            child: _allFamilies.isEmpty
                ? const Text(
                    'Không có dữ liệu',
                    style: TextStyle(color: AppColors.textSecondary),
                  )
                : Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: _allFamilies.map((f) {
                      final selected = _selectedFamilyIds.contains(f.id);
                      return _ToggleChip(
                        label: f.name,
                        selected: selected,
                        color: AppColors.primary,
                        onTap: () => _toggleFamily(f.id),
                      );
                    }).toList(),
                  ),
          ),
          const SizedBox(height: 12),

          // ═══ SCENT NOTES ═══
          _EditCard(
            color: AppColors.primary,
            icon: Icons.spa_outlined,
            title: 'Nốt hương ưa thích',
            subtitle: 'Chọn nốt hương cho từng tầng hương',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (final entry in [
                  ('Top', 'Hương đầu', Colors.green),
                  ('Heart', 'Hương giữa', Colors.red),
                  ('Base', 'Hương cuối', Colors.amber.shade800),
                ]) ...[
                  _NoteTypeHeader(label: entry.$2, dotColor: entry.$3),
                  const SizedBox(height: 8),
                  _allNotes.isEmpty
                      ? const Text(
                          'Không có dữ liệu',
                          style: TextStyle(color: AppColors.textSecondary),
                        )
                      : Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: _allNotes.map((n) {
                            final selected = _selectedNotes.any(
                              (s) => s.noteId == n.id && s.noteType == entry.$1,
                            );
                            return _ToggleChip(
                              label: n.name,
                              selected: selected,
                              color: AppColors.primary,
                              onTap: () => _toggleNote(n.id, entry.$1, n.name),
                            );
                          }).toList(),
                        ),
                  const SizedBox(height: 16),
                ],
              ],
            ),
          ),
          const SizedBox(height: 12),

          // ═══ ATTRIBUTE PREFERENCES ═══
          if (_allAttributes.isNotEmpty)
            _EditCard(
              color: Colors.blue,
              icon: Icons.style_outlined,
              title: 'Thuộc tính yêu thích',
              subtitle: 'Chọn các thuộc tính phù hợp với bạn',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var i = 0; i < _allAttributes.length; i++) ...[
                    _buildAttrGroup(_allAttributes[i]),
                    if (i < _allAttributes.length - 1) ...[
                      const SizedBox(height: 8),
                      const Divider(),
                      const SizedBox(height: 8),
                    ],
                  ],
                ],
              ),
            ),

          const SizedBox(height: 24),
        ]),
      ),
    );
  }

  Widget _buildAttrGroup(({int id, String name}) attr) {
    final values = _allAttrValues[attr.id] ?? [];
    if (values.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          attr.name,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: values.map((v) {
            final selected = _selectedAttrValueIds.contains(v.id);
            return _ToggleChip(
              label: v.name,
              selected: selected,
              color: Colors.blue,
              onTap: () => _toggleAttrValue(v.id),
            );
          }).toList(),
        ),
      ],
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// SHARED WIDGETS
// ═══════════════════════════════════════════════════════════════════════════

/// Read-only card styled like the React FE
class _ReadCard extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String label;
  final Widget child;

  const _ReadCard({
    required this.color,
    required this.icon,
    required this.label,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.04),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: color.withValues(alpha: 0.15)),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(icon, size: 18, color: color),
              ),
              const SizedBox(width: 10),
              Text(
                label,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          child,
        ],
      ),
    );
  }
}

/// Edit card styled like the React FE
class _EditCard extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  final String? subtitle;
  final Widget child;

  const _EditCard({
    required this.color,
    required this.icon,
    required this.title,
    this.subtitle,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.03),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: color.withValues(alpha: 0.15)),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(icon, size: 18, color: color),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                    if (subtitle != null)
                      Text(
                        subtitle!,
                        style: const TextStyle(
                          fontSize: 12,
                          color: AppColors.textSecondary,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          child,
        ],
      ),
    );
  }
}

/// Note group for read-only view
class _NoteGroup extends StatelessWidget {
  final String label;
  final List<NotePreference> notes;
  final Color color;

  const _NoteGroup({
    required this.label,
    required this.notes,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.grey.shade600,
          ),
        ),
        const SizedBox(height: 6),
        Wrap(
          spacing: 6,
          runSpacing: 6,
          children: notes
              .map(
                (n) => Chip(
                  label: Text(n.name),
                  labelStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: color,
                  ),
                  backgroundColor: color.withValues(alpha: 0.08),
                  side: BorderSide(color: color.withValues(alpha: 0.3)),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  visualDensity: VisualDensity.compact,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

/// Toggle chip for edit view
class _ToggleChip extends StatelessWidget {
  final String label;
  final bool selected;
  final Color color;
  final VoidCallback onTap;

  const _ToggleChip({
    required this.label,
    required this.selected,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
        decoration: BoxDecoration(
          color: selected ? color : Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: selected ? color : AppColors.border,
            width: selected ? 1.5 : 1,
          ),
          boxShadow: selected
              ? [
                  BoxShadow(
                    color: color.withValues(alpha: 0.2),
                    blurRadius: 4,
                    offset: const Offset(0, 1),
                  ),
                ]
              : null,
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 13,
            fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
            color: selected ? Colors.white : AppColors.textPrimary,
          ),
        ),
      ),
    );
  }
}

/// Budget range slider
class _BudgetSlider extends StatelessWidget {
  final double min;
  final double max;
  final void Function(double, double) onChanged;

  static const _budgetMin = 0.0;
  static const _budgetMax = 10000000.0;
  static const _step = 100000.0;

  const _BudgetSlider({
    required this.min,
    required this.max,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final lo = min.clamp(_budgetMin, _budgetMax);
    final hi = max.clamp(_budgetMin, _budgetMax);

    return RangeSlider(
      values: RangeValues(
        lo <= hi ? lo : _budgetMin,
        hi >= lo ? hi : _budgetMax,
      ),
      min: _budgetMin,
      max: _budgetMax,
      divisions: (_budgetMax / _step).round(),
      labels: RangeLabels(_fmtCurrency(lo), _fmtCurrency(hi)),
      activeColor: Colors.orange,
      onChanged: (values) => onChanged(values.start, values.end),
    );
  }
}

/// Note type header with colored dot
class _NoteTypeHeader extends StatelessWidget {
  final String label;
  final Color dotColor;

  const _NoteTypeHeader({required this.label, required this.dotColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(color: dotColor, shape: BoxShape.circle),
        ),
        const SizedBox(width: 8),
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
        ),
      ],
    );
  }
}

/// Internal model for note selection in edit mode
class _NoteWithType {
  final int noteId;
  final String noteType;
  final String noteName;

  _NoteWithType(this.noteId, this.noteType, this.noteName);
}
