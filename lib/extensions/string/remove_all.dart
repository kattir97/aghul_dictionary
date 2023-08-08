extension RemoveAll on String {
  String removeAll(Iterable<String> values) {
    return values.fold(
      this,
      (String result, String pattern) => result.replaceAll(pattern, ''),
    );
  }
}
