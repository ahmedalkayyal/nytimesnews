// GENERATED CODE - DO NOT MODIFY BY HAND

part of media_meta;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MediaMeta> _$mediaMetaSerializer = new _$MediaMetaSerializer();

class _$MediaMetaSerializer implements StructuredSerializer<MediaMeta> {
  @override
  final Iterable<Type> types = const [MediaMeta, _$MediaMeta];
  @override
  final String wireName = 'MediaMeta';

  @override
  Iterable<Object?> serialize(Serializers serializers, MediaMeta object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.format;
    if (value != null) {
      result
        ..add('format')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MediaMeta deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MediaMetaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'format':
          result.format = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$MediaMeta extends MediaMeta {
  @override
  final String? url;
  @override
  final String? format;

  factory _$MediaMeta([void Function(MediaMetaBuilder)? updates]) =>
      (new MediaMetaBuilder()..update(updates))._build();

  _$MediaMeta._({this.url, this.format}) : super._();

  @override
  MediaMeta rebuild(void Function(MediaMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaMetaBuilder toBuilder() => new MediaMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaMeta && url == other.url && format == other.format;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, url.hashCode), format.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MediaMeta')
          ..add('url', url)
          ..add('format', format))
        .toString();
  }
}

class MediaMetaBuilder implements Builder<MediaMeta, MediaMetaBuilder> {
  _$MediaMeta? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _format;
  String? get format => _$this._format;
  set format(String? format) => _$this._format = format;

  MediaMetaBuilder();

  MediaMetaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _format = $v.format;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaMeta other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MediaMeta;
  }

  @override
  void update(void Function(MediaMetaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaMeta build() => _build();

  _$MediaMeta _build() {
    final _$result = _$v ?? new _$MediaMeta._(url: url, format: format);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
