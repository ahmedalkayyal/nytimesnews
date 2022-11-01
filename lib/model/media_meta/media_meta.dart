library media_meta;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import '../serializer/serializer.dart';

part 'media_meta.g.dart';

abstract class MediaMeta implements Built<MediaMeta, MediaMetaBuilder> {

  @BuiltValueField(wireName: "url")
  String? get url;

  @BuiltValueField(wireName: "format")
  String? get format;



  MediaMeta._();

  factory MediaMeta([Function(MediaMetaBuilder b) updates]) = _$MediaMeta;

  String toJson() {
    return json
        .encode(serializers.serializeWith(MediaMeta.serializer, this));
  }

  static MediaMeta? fromJson(String jsonString) {
    return serializers.deserializeWith(
        MediaMeta.serializer, json.decode(jsonString));
  }


  static Serializer<MediaMeta> get serializer =>
      /// Todo check letter size
  _$mediaMetaSerializer;
}