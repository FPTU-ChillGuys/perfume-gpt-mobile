import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/image_url_helper.dart';
import '../../../../domain/entities/note_preference.dart';
import '../providers/profile_providers.dart';

class ProfileEditPage extends ConsumerStatefulWidget {
  const ProfileEditPage({super.key});

  @override
  ConsumerState<ProfileEditPage> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends ConsumerState<ProfileEditPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();
  final _phoneCtrl = TextEditingController();
  DateTime? _dateOfBirth;
  bool _saving = false;
  bool _didLoad = false;
  bool _uploadingAvatar = false;
  List<NotePreference> _selectedNotes = [];

  final _picker = ImagePicker();

  static const _noteTypeLabels = {
    'Top': 'Top note',
    'Heart': 'Heart note',
    'Base': 'Base note',
  };
  static const _noteTypes = ['Top', 'Heart', 'Base'];

  @override
  void dispose() {
    _nameCtrl.dispose();
    _phoneCtrl.dispose();
    super.dispose();
  }

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _dateOfBirth ?? DateTime(2000),
      firstDate: DateTime(1920),
      lastDate: DateTime.now(),
      builder: (ctx, child) => Theme(
        data: Theme.of(
          ctx,
        ).copyWith(colorScheme: ColorScheme.light(primary: AppColors.primary)),
        child: child!,
      ),
    );
    if (picked != null) setState(() => _dateOfBirth = picked);
  }

  Future<void> _pickAndUploadAvatar() async {
    final source = await showModalBottomSheet<ImageSource>(
      context: context,
      builder: (ctx) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text('Chụp ảnh'),
              onTap: () => Navigator.pop(ctx, ImageSource.camera),
            ),
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text('Chọn từ thư viện'),
              onTap: () => Navigator.pop(ctx, ImageSource.gallery),
            ),
          ],
        ),
      ),
    );
    if (source == null) return;

    final xFile = await _picker.pickImage(
      source: source,
      maxWidth: 512,
      maxHeight: 512,
      imageQuality: 85,
    );
    if (xFile == null) return;

    setState(() => _uploadingAvatar = true);
    try {
      await ref
          .read(profileControllerProvider.notifier)
          .uploadAvatar(xFile.path);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Cập nhật ảnh đại diện thành công'),
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
      if (mounted) setState(() => _uploadingAvatar = false);
    }
  }

  Future<void> _deleteAvatar() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Xóa ảnh đại diện?'),
        content: const Text('Bạn có chắc muốn xóa ảnh đại diện hiện tại?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Hủy'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: const Text('Xóa', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
    if (confirmed != true) return;

    setState(() => _uploadingAvatar = true);
    try {
      await ref.read(profileControllerProvider.notifier).deleteAvatar();
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Đã xóa ảnh đại diện'),
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
      if (mounted) setState(() => _uploadingAvatar = false);
    }
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _saving = true);
    try {
      // Update user credentials (name + phone)
      await ref
          .read(profileControllerProvider.notifier)
          .updateMe(
            fullName: _nameCtrl.text.trim(),
            phoneNumber: _phoneCtrl.text.trim(),
          );
      // Update profile preferences (date of birth, scent notes)
      await ref
          .read(profileControllerProvider.notifier)
          .updateProfile(
            dateOfBirth: _dateOfBirth,
            notePreferences: _selectedNotes,
          );
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Cập nhật hồ sơ thành công'),
            backgroundColor: Colors.green,
          ),
        );
        context.pop(true);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Lỗi: $e'), backgroundColor: Colors.red),
        );
      }
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final profileAsync = ref.watch(profileControllerProvider);

    if (!_didLoad) {
      profileAsync.whenData((profile) {
        _didLoad = true;
        final authUser = ref.read(authProvider).value;
        _nameCtrl.text = profile.fullName ?? authUser?.name ?? '';
        _phoneCtrl.text = profile.phoneNumber ?? '';
        _dateOfBirth = profile.dateOfBirth;
        _selectedNotes = List.of(profile.notePreferences);
        if (mounted) setState(() {});
      });
    }

    return Scaffold(
      backgroundColor: AppColors.surface,
      appBar: AppBar(
        title: const Text('Chỉnh sửa hồ sơ'),
        backgroundColor: AppColors.primaryDark,
        foregroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: profileAsync.when(
        data: (_) => Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              // ── Avatar with upload/delete ──
              Center(
                child: Stack(
                  children: [
                    profileAsync.maybeWhen(
                      data: (p) {
                        final hasAvatar =
                            p.avatarUrl != null && p.avatarUrl!.isNotEmpty;
                        return CircleAvatar(
                          radius: 48,
                          backgroundColor: AppColors.primaryLight,
                          backgroundImage: hasAvatar
                              ? NetworkImage(
                                  ImageUrlHelper.resolve(p.avatarUrl!),
                                )
                              : null,
                          child: _uploadingAvatar
                              ? const CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: AppColors.primary,
                                )
                              : hasAvatar
                              ? null
                              : Text(
                                  (_nameCtrl.text.isNotEmpty
                                          ? _nameCtrl.text[0]
                                          : '?')
                                      .toUpperCase(),
                                  style: const TextStyle(
                                    fontSize: 36,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primary,
                                  ),
                                ),
                        );
                      },
                      orElse: () => CircleAvatar(
                        radius: 48,
                        backgroundColor: AppColors.primaryLight,
                        child: Text(
                          (_nameCtrl.text.isNotEmpty ? _nameCtrl.text[0] : '?')
                              .toUpperCase(),
                          style: const TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                    ),
                    // Camera button
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: GestureDetector(
                        onTap: _uploadingAvatar ? null : _pickAndUploadAvatar,
                        child: Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                          child: const Icon(
                            Icons.camera_alt,
                            size: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Delete avatar button (only if avatar exists)
              profileAsync.maybeWhen(
                data: (p) => p.avatarUrl != null && p.avatarUrl!.isNotEmpty
                    ? Center(
                        child: TextButton.icon(
                          onPressed: _uploadingAvatar ? null : _deleteAvatar,
                          icon: const Icon(
                            Icons.delete_outline,
                            size: 16,
                            color: Colors.red,
                          ),
                          label: const Text(
                            'Xóa ảnh',
                            style: TextStyle(color: Colors.red, fontSize: 12),
                          ),
                        ),
                      )
                    : const SizedBox(height: 8),
                orElse: () => const SizedBox(height: 8),
              ),
              const SizedBox(height: 24),

              _buildField(
                _nameCtrl,
                'Họ và tên',
                Icons.person_outline,
                validator: (v) => (v == null || v.trim().isEmpty)
                    ? 'Vui lòng nhập tên'
                    : null,
              ),
              const SizedBox(height: 16),

              _buildField(
                _phoneCtrl,
                'Số điện thoại',
                Icons.phone_outlined,
                keyboard: TextInputType.phone,
                validator: (v) {
                  if (v == null || v.trim().isEmpty) {
                    return 'Vui lòng nhập số điện thoại';
                  }
                  if (!RegExp(r'^[0-9+]{8,15}$').hasMatch(v.trim())) {
                    return 'Số điện thoại không hợp lệ';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // ── Date of birth ──
              GestureDetector(
                onTap: _pickDate,
                child: Container(
                  height: 56,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColors.border),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.calendar_today_outlined,
                        size: 20,
                        color: AppColors.textSecondary,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          _dateOfBirth != null
                              ? DateFormat('dd/MM/yyyy').format(_dateOfBirth!)
                              : 'Ngày sinh',
                          style: TextStyle(
                            fontSize: 14,
                            color: _dateOfBirth != null
                                ? AppColors.textPrimary
                                : AppColors.textSecondary,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_drop_down,
                        color: AppColors.textSecondary,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // ── Scent note preferences ──
              _buildScentNotesSection(),

              const SizedBox(height: 32),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: _saving ? null : _save,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: _saving
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        )
                      : const Text(
                          'Lưu thay đổi',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                ),
              ),
            ],
          ),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(color: AppColors.primary),
        ),
        error: (e, _) => Center(child: Text('Lỗi: $e')),
      ),
    );
  }

  Widget _buildScentNotesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(
              Icons.spa_outlined,
              size: 20,
              color: AppColors.textSecondary,
            ),
            const SizedBox(width: 8),
            const Expanded(
              child: Text(
                'Nốt hương yêu thích',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
            ),
            TextButton.icon(
              onPressed: _showAddNoteSheet,
              icon: const Icon(Icons.add, size: 18),
              label: const Text('Thêm'),
              style: TextButton.styleFrom(
                foregroundColor: AppColors.primary,
                padding: const EdgeInsets.symmetric(horizontal: 8),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        if (_selectedNotes.isEmpty)
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.border),
            ),
            child: const Text(
              'Chưa có nốt hương nào. Nhấn "Thêm" để chọn.',
              style: TextStyle(fontSize: 13, color: AppColors.textSecondary),
              textAlign: TextAlign.center,
            ),
          )
        else
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: _selectedNotes.map((note) {
              return Chip(
                label: Text(
                  '${note.name} (${_noteTypeLabels[note.type] ?? note.type})',
                ),
                deleteIcon: const Icon(Icons.close, size: 16),
                onDeleted: () => setState(() => _selectedNotes.remove(note)),
                backgroundColor: AppColors.primaryLight,
                labelStyle: const TextStyle(
                  fontSize: 12,
                  color: AppColors.textPrimary,
                ),
                side: BorderSide.none,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              );
            }).toList(),
          ),
      ],
    );
  }

  Future<void> _showAddNoteSheet() async {
    final lookupAsync = ref.read(scentNotesLookupProvider);
    // Eagerly fetch if not yet loaded
    if (lookupAsync is! AsyncData) {
      ref.invalidate(scentNotesLookupProvider);
    }

    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (ctx) => _AddNoteSheet(
        selectedNotes: _selectedNotes,
        noteTypes: _noteTypes,
        noteTypeLabels: _noteTypeLabels,
        onAdd: (note) => setState(() => _selectedNotes.add(note)),
      ),
    );
  }

  Widget _buildField(
    TextEditingController ctrl,
    String label,
    IconData icon, {
    TextInputType? keyboard,
    String? Function(String?)? validator,
  }) {
    return TextFormField(
      controller: ctrl,
      keyboardType: keyboard,
      validator: validator,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, size: 20),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.primary, width: 1.5),
        ),
      ),
    );
  }
}

class _AddNoteSheet extends ConsumerStatefulWidget {
  final List<NotePreference> selectedNotes;
  final List<String> noteTypes;
  final Map<String, String> noteTypeLabels;
  final ValueChanged<NotePreference> onAdd;

  const _AddNoteSheet({
    required this.selectedNotes,
    required this.noteTypes,
    required this.noteTypeLabels,
    required this.onAdd,
  });

  @override
  ConsumerState<_AddNoteSheet> createState() => _AddNoteSheetState();
}

class _AddNoteSheetState extends ConsumerState<_AddNoteSheet> {
  String _selectedType = 'Top';
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final lookupAsync = ref.watch(scentNotesLookupProvider);

    return DraggableScrollableSheet(
      initialChildSize: 0.7,
      minChildSize: 0.4,
      maxChildSize: 0.9,
      expand: false,
      builder: (ctx, scrollCtrl) => Column(
        children: [
          const SizedBox(height: 8),
          Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Thêm nốt hương',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 12),
          // Note type selector
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: widget.noteTypes.map((type) {
                final selected = _selectedType == type;
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: ChoiceChip(
                      label: Text(widget.noteTypeLabels[type] ?? type),
                      selected: selected,
                      onSelected: (_) => setState(() => _selectedType = type),
                      selectedColor: AppColors.primary,
                      labelStyle: TextStyle(
                        fontSize: 12,
                        color: selected ? Colors.white : AppColors.textPrimary,
                      ),
                      showCheckmark: false,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 8),
          // Search
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              onChanged: (v) => setState(() => _searchQuery = v.toLowerCase()),
              decoration: InputDecoration(
                hintText: 'Tìm nốt hương...',
                prefixIcon: const Icon(Icons.search, size: 20),
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: AppColors.border),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: AppColors.border),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          // List
          Expanded(
            child: lookupAsync.when(
              data: (notes) {
                final alreadyIds = widget.selectedNotes
                    .map((e) => e.noteId)
                    .toSet();
                final filtered = notes
                    .where((n) => !alreadyIds.contains(n.id))
                    .where(
                      (n) =>
                          _searchQuery.isEmpty ||
                          n.name.toLowerCase().contains(_searchQuery),
                    )
                    .toList();
                if (filtered.isEmpty) {
                  return const Center(
                    child: Text(
                      'Không tìm thấy nốt hương',
                      style: TextStyle(color: AppColors.textSecondary),
                    ),
                  );
                }
                return ListView.separated(
                  controller: scrollCtrl,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: filtered.length,
                  separatorBuilder: (_, _) => const Divider(height: 1),
                  itemBuilder: (_, i) {
                    final note = filtered[i];
                    return ListTile(
                      dense: true,
                      title: Text(note.name),
                      trailing: const Icon(
                        Icons.add_circle_outline,
                        color: AppColors.primary,
                      ),
                      onTap: () {
                        widget.onAdd(
                          NotePreference(
                            noteId: note.id,
                            name: note.name,
                            type: _selectedType,
                          ),
                        );
                        Navigator.pop(context);
                      },
                    );
                  },
                );
              },
              loading: () => const Center(
                child: CircularProgressIndicator(color: AppColors.primary),
              ),
              error: (e, _) => Center(child: Text('Lỗi: $e')),
            ),
          ),
        ],
      ),
    );
  }
}
