library test_article;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:nytimesnews/model/multi_media/multi_media.dart';
import '../serializer/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'test_article.g.dart';

abstract class TestArticle implements Built<TestArticle, TestArticleBuilder> {

  @BuiltValueField(wireName: "url")
  String? get url;

  @BuiltValueField(wireName: "title")
  String? get title;

  @BuiltValueField(wireName: "published_date")
  String? get published_date;

  @BuiltValueField(wireName: "abstract")
  String? get abstract;

  @BuiltValueField(wireName: "section")
  String? get section;

  @BuiltValueField(wireName: "media")
  BuiltList<MultiMedia?>? get media;




  TestArticle._();

  factory TestArticle([Function(TestArticleBuilder b) updates]) = _$TestArticle;

  String toJson() {
    return json
        .encode(serializers.serializeWith(TestArticle.serializer, this));
  }

  static TestArticle? fromJson(String jsonString) {
    return serializers.deserializeWith(
        TestArticle.serializer, json.decode(jsonString));
  }


  static Serializer<TestArticle> get serializer =>
      /// Todo check letter size
      _$testArticleSerializer;
}