library multi_media;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:nytimesnews/model/media_meta/media_meta.dart';
import '../serializer/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'multi_media.g.dart';

abstract class MultiMedia implements Built<MultiMedia, MultiMediaBuilder> {

  @BuiltValueField(wireName: "type")
  String? get type;

  @BuiltValueField(wireName: "subtype")
  String? get subtype;

  @BuiltValueField(wireName: "media-metadata")
  BuiltList<MediaMeta?>? get mediaMetaData;

  MultiMedia._();

  factory MultiMedia([Function(MultiMediaBuilder b) updates]) = _$MultiMedia;

  String toJson() {
    return json
        .encode(serializers.serializeWith(MultiMedia.serializer, this));
  }

  static MultiMedia? fromJson(String jsonString) {
    return serializers.deserializeWith(
        MultiMedia.serializer, json.decode(jsonString));
  }


  static Serializer<MultiMedia> get serializer =>
      /// Todo check letter size
  _$multiMediaSerializer;
}