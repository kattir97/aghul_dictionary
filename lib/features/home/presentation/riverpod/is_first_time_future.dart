import 'package:aghul_dictionary/features/home/data/local/isar_home_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final isFirstTimeProvider = FutureProvider<bool>((ref) async {
  final isarHomeRep = ref.read(isarHomeProvider);
  return await isarHomeRep.checkFirst();
});
