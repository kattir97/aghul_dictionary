import 'package:aghul_dictionary/features/search/presentation/riverpod/search_query_provider.dart';
import 'package:aghul_dictionary/features/search/presentation/riverpod/search_results_provider.dart';
import 'package:aghul_dictionary/features/search/presentation/riverpod/search_word_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'dart:async';

class SearchBarWidget extends ConsumerStatefulWidget {
  const SearchBarWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SearchBarWidgetState();
}

class _SearchBarWidgetState extends ConsumerState<SearchBarWidget> {
  TextEditingController searchController = TextEditingController();
  Timer? _debounce;

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
    _debounce?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 350,
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: searchController,
        decoration: const InputDecoration(
          labelText: 'Search',
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
        onChanged: (value) async {
          // if (_debounce?.isActive ?? false) _debounce?.cancel();
          _debounce?.cancel();

          _debounce = Timer(const Duration(milliseconds: 200), () async {
            final searchQuery =
                ref.read(searchQueryProvider.notifier).state = value;

            final results = ref.read(searchWordProvider(searchQuery).future);

            final data = await results;
            ref.read(searchResultsProvider.notifier).state = data;
          });
        },
      ),
    );
  }
}
