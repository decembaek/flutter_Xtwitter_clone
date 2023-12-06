import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:twitter_clone/models/tistory_list_model.dart';

class TistoryApiService {
  static const baseUrl = "https://www.tistory.com";
  static const listUrl = "apis/post/list";
  static const accessToken =
      "ffe9294787cfdb9a031d63498533c063_705801aea0d76ae25412f2ac406ccd56";
  static const outputType = "json";
  static const blogName = "wingyu-story";

  static Future<TistoryContentList> getTistoryList() async {
    // List<TistoryContentList> tistoryInstances = [];

    final url = Uri.parse(
        "$baseUrl/$listUrl?access_token=$accessToken&output=$outputType&blogName=$blogName&page=1");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final tistory = jsonDecode(response.body);
      return TistoryContentList.fromJson(tistory);
    }
    throw Error();
  }
}
