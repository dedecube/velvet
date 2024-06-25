class TranslationItem {
  TranslationItem({
    required this.namespace,
    required this.key,
    this.args,
  });

  final String key;

  final String namespace;

  final Map<String, String>? args;

  get fullKey => '$namespace.$key';
}
