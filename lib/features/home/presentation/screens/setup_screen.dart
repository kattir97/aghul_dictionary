import 'package:aghul_dictionary/features/home/presentation/riverpod/is_first_time_future.dart';
import 'package:aghul_dictionary/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SetupScreen extends ConsumerWidget {
  const SetupScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final checkFirst = ref.watch(isFirstTimeProvider);

    return checkFirst.when(
      data: (data) => const HomeScreen(),
      error: (error, stackTrace) => Text(error.toString()),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
