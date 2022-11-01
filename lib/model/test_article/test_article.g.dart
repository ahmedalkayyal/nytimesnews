// GENERATED CODE - DO NOT MODIFY BY HAND

part of test_article;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TestArticle> _$testArticleSerializer = new _$TestArticleSerializer();

class _$TestArticleSerializer implements StructuredSerializer<TestArticle> {
  @override
  final Iterable<Type> types = const [TestArticle, _$TestArticle];
  @override
  final String wireName = 'TestArticle';

  @override
  Iterable<Object?> serialize(Serializers serializers, TestArticle object,
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
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.published_date;
    if (value != null) {
      result
        ..add('published_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.abstract;
    if (value != null) {
      result
        ..add('abstract')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.section;
    if (value != null) {
      result
        ..add('section')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(MultiMedia)])));
    }
    return result;
  }

  @override
  TestArticle deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TestArticleBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'published_date':
          result.published_date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'abstract':
          result.abstract = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'section':
          result.section = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(MultiMedia)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$TestArticle extends TestArticle {
  @override
  final String? url;
  @override
  final String? title;
  @override
  final String? published_date;
  @override
  final String? abstract;
  @override
  final String? section;
  @override
  final BuiltList<MultiMedia?>? media;

  factory _$TestArticle([void Function(TestArticleBuilder)? updates]) =>
      (new TestArticleBuilder()..update(updates))._build();

  _$TestArticle._(
      {this.url,
      this.title,
      this.published_date,
      this.abstract,
      this.section,
      this.media})
      : super._();

  @override
  TestArticle rebuild(void Function(TestArticleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestArticleBuilder toBuilder() => new TestArticleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestArticle &&
        url == other.url &&
        title == other.title &&
        published_date == other.published_date &&
        abstract == other.abstract &&
        section == other.section &&
        media == other.media;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, url.hashCode), title.hashCode),
                    published_date.hashCode),
                abstract.hashCode),
            section.hashCode),
        media.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TestArticle')
          ..add('url', url)
          ..add('title', title)
          ..add('published_date', published_date)
          ..add('abstract', abstract)
          ..add('section', section)
          ..add('media', media))
        .toString();
  }
}

class TestArticleBuilder implements Builder<TestArticle, TestArticleBuilder> {
  _$TestArticle? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _published_date;
  String? get published_date => _$this._published_date;
  set published_date(String? published_date) =>
      _$this._published_date = published_date;

  String? _abstract;
  String? get abstract => _$this._abstract;
  set abstract(String? abstract) => _$this._abstract = abstract;

  String? _section;
  String? get section => _$this._section;
  set section(String? section) => _$this._section = section;

  ListBuilder<MultiMedia?>? _media;
  ListBuilder<MultiMedia?> get media =>
      _$this._media ??= new ListBuilder<MultiMedia?>();
  set media(ListBuilder<MultiMedia?>? media) => _$this._media = media;

  TestArticleBuilder();

  TestArticleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _title = $v.title;
      _published_date = $v.published_date;
      _abstract = $v.abstract;
      _section = $v.section;
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestArticle other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestArticle;
  }

  @override
  void update(void Function(TestArticleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestArticle build() => _build();

  _$TestArticle _build() {
    _$TestArticle _$result;
    try {
      _$result = _$v ??
          new _$TestArticle._(
              url: url,
              title: title,
              published_date: published_date,
              abstract: abstract,
              section: section,
              media: _media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TestArticle', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
