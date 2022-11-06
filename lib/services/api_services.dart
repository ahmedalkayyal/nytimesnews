import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nytimesnews/model/serializer/serializer.dart';
import 'package:nytimesnews/model/test_article/test_article.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

class APIService {
  final String _baseUrl = 'api.nytimes.com';
  static const String API_KEY = 'FP72DSq38ceGkgUAmyAYTk8Iq82lqWMi';

  Future<BuiltList<TestArticle?>?> fetchArticlesByPeriod(int period) async {
    Map<String, dynamic> parameters = {'api-key': API_KEY};
    Uri uri = Uri.http(
      _baseUrl,
      "/svc/mostpopular/v2/viewed/$period.json",
      parameters,
    );

    try {
      var response = await http.get(uri);

      if (response.statusCode == 200) {
        final data =
            serializers.deserialize(json.decode(response.body)['results'],
                specifiedType: const FullType(
                  BuiltList,
                  [
                    FullType(TestArticle),
                  ],
                ));
        if (data != null) {
          return data as BuiltList<TestArticle>;
        } else {
          /// TODO
          return Future.error("error");
        }
      } else {
        return Future.error("error");
      }
    } catch (err) {
      throw err.toString();
    }
  }
}
