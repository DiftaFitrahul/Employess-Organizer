class PostEmployee {
  String? name;
  String? job;

  PostEmployee({this.name, this.job});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['job'] = job;

    return data;
  }
}
