class TistoryContentList {
  late final String url;
  late final List posts;
  late final String page;
  late final String count;

  TistoryContentList.fromJson(Map<String, dynamic> json)
      : url = json["tistory"]["item"]["url"],
        posts = json["tistory"]["item"]["posts"],
        page = json["tistory"]["item"]["page"],
        count = json["tistory"]["item"]["count"];
}
