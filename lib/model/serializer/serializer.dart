library serializer;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';
import 'package:nytimesnews/model/media_meta/media_meta.dart';
import 'package:nytimesnews/model/multi_media/multi_media.dart';
import 'package:nytimesnews/model/test_article/test_article.dart';

part 'serializer.g.dart';

@SerializersFor([
  TestArticle,
  MultiMedia,
  MediaMeta
])

final Serializers serializers = (_$serializers.toBuilder()
  ..addPlugin(StandardJsonPlugin())

  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(TestArticle),
        ],
      )),
          () => ListBuilder<TestArticle>())


  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(MultiMedia),
        ],
      )),
          () => ListBuilder<MultiMedia>())

  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(MediaMeta),
        ],
      )),
          () => ListBuilder<MediaMeta>())


).build();