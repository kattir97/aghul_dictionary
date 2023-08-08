import 'package:aghul_dictionary/features/word/presentation/riverpod/word_upload_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final isLoadingProvider = Provider<bool>((ref) {
  final isLoading = ref.watch(wordUploadProvider);
  return isLoading;
});
