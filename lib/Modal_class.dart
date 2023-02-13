class Covid {
  final List loc;

  Covid({
    required this.loc,
  });

  factory Covid.fromJson({required Map json}) {
    return Covid(
        loc: json['data']['regional'],
    );
  }
}
