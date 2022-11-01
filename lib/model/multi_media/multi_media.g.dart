// GENERATED CODE - DO NOT MODIFY BY HAND

part of multi_media;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MultiMedia> _$multiMediaSerializer = new _$MultiMediaSerializer();

class _$MultiMediaSerializer implements StructuredSerializer<MultiMedia> {
  @override
  final Iterable<Type> types = const [MultiMedia, _$MultiMedia];
  @override
  final String wireName = 'MultiMedia';

  @override
  Iterable<Object?> serialize(Serializers serializers, MultiMedia object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.subtype;
    if (value != null) {
      result
        ..add('subtype')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mediaMetaData;
    if (value != null) {
      result
        ..add('media-metadata')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(MediaMeta)])));
    }
    return result;
  }

  @override
  MultiMedia deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MultiMediaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'subtype':
          result.subtype = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'media-metadata':
          result.mediaMetaData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(MediaMeta)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$MultiMedia extends MultiMedia {
  @override
  final String? type;
  @override
  final String? subtype;
  @override
  final BuiltList<MediaMeta?>? mediaMetaData;

  factory _$MultiMedia([void Function(MultiMediaBuilder)? updates]) =>
      (new MultiMediaBuilder()..update(updates))._build();

  _$MultiMedia._({this.type, this.subtype, this.mediaMetaData}) : super._();

  @override
  MultiMedia rebuild(void Function(MultiMediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MultiMediaBuilder toBuilder() => new MultiMediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MultiMedia &&
        type == other.type &&
        subtype == other.subtype &&
        mediaMetaData == other.mediaMetaData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, type.hashCode), subtype.hashCode), mediaMetaData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MultiMedia')
          ..add('type', type)
          ..add('subtype', subtype)
          ..add('mediaMetaData', mediaMetaData))
        .toString();
  }
}

class MultiMediaBuilder implements Builder<MultiMedia, MultiMediaBuilder> {
  _$MultiMedia? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _subtype;
  String? get subtype => _$this._subtype;
  set subtype(String? subtype) => _$this._subtype = subtype;

  ListBuilder<MediaMeta?>? _mediaMetaData;
  ListBuilder<MediaMeta?> get mediaMetaData =>
      _$this._mediaMetaData ??= new ListBuilder<MediaMeta?>();
  set mediaMetaData(ListBuilder<MediaMeta?>? mediaMetaData) =>
      _$this._mediaMetaData = mediaMetaData;

  MultiMediaBuilder();

  MultiMediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _subtype = $v.subtype;
      _mediaMetaData = $v.mediaMetaData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MultiMedia other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MultiMedia;
  }

  @override
  void update(void Function(MultiMediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MultiMedia build() => _build();

  _$MultiMedia _build() {
    _$MultiMedia _$result;
    try {
      _$result = _$v ??
          new _$MultiMedia._(
              type: type,
              subtype: subtype,
              mediaMetaData: _mediaMetaData?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mediaMetaData';
        _mediaMetaData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MultiMedia', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
