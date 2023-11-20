class TistoryContentList {
  late final String url;
  late final List posts;

  TistoryContentList.fromJson(Map<String, dynamic> json)
      : url = json["tistory"]["item"]["url"],
        posts = json["tistory"]["item"]["posts"];
}
