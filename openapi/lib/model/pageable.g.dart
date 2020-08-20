// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pageable.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Pageable> _$pageableSerializer = new _$PageableSerializer();

class _$PageableSerializer implements StructuredSerializer<Pageable> {
  @override
  final Iterable<Type> types = const [Pageable, _$Pageable];
  @override
  final String wireName = 'Pageable';

  @override
  Iterable<Object> serialize(Serializers serializers, Pageable object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.sort != null) {
      result
        ..add('sort')
        ..add(serializers.serialize(object.sort,
            specifiedType: const FullType(Sort)));
    }
    if (object.pageNumber != null) {
      result
        ..add('pageNumber')
        ..add(serializers.serialize(object.pageNumber,
            specifiedType: const FullType(int)));
    }
    if (object.pageSize != null) {
      result
        ..add('pageSize')
        ..add(serializers.serialize(object.pageSize,
            specifiedType: const FullType(int)));
    }
    if (object.paged != null) {
      result
        ..add('paged')
        ..add(serializers.serialize(object.paged,
            specifiedType: const FullType(bool)));
    }
    if (object.unpaged != null) {
      result
        ..add('unpaged')
        ..add(serializers.serialize(object.unpaged,
            specifiedType: const FullType(bool)));
    }
    if (object.offset != null) {
      result
        ..add('offset')
        ..add(serializers.serialize(object.offset,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Pageable deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PageableBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'sort':
          result.sort.replace(serializers.deserialize(value,
              specifiedType: const FullType(Sort)) as Sort);
          break;
        case 'pageNumber':
          result.pageNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pageSize':
          result.pageSize = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'paged':
          result.paged = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'unpaged':
          result.unpaged = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'offset':
          result.offset = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Pageable extends Pageable {
  @override
  final Sort sort;
  @override
  final int pageNumber;
  @override
  final int pageSize;
  @override
  final bool paged;
  @override
  final bool unpaged;
  @override
  final int offset;

  factory _$Pageable([void Function(PageableBuilder) updates]) =>
      (new PageableBuilder()..update(updates)).build();

  _$Pageable._(
      {this.sort,
      this.pageNumber,
      this.pageSize,
      this.paged,
      this.unpaged,
      this.offset})
      : super._();

  @override
  Pageable rebuild(void Function(PageableBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PageableBuilder toBuilder() => new PageableBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Pageable &&
        sort == other.sort &&
        pageNumber == other.pageNumber &&
        pageSize == other.pageSize &&
        paged == other.paged &&
        unpaged == other.unpaged &&
        offset == other.offset;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, sort.hashCode), pageNumber.hashCode),
                    pageSize.hashCode),
                paged.hashCode),
            unpaged.hashCode),
        offset.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Pageable')
          ..add('sort', sort)
          ..add('pageNumber', pageNumber)
          ..add('pageSize', pageSize)
          ..add('paged', paged)
          ..add('unpaged', unpaged)
          ..add('offset', offset))
        .toString();
  }
}

class PageableBuilder implements Builder<Pageable, PageableBuilder> {
  _$Pageable _$v;

  SortBuilder _sort;
  SortBuilder get sort => _$this._sort ??= new SortBuilder();
  set sort(SortBuilder sort) => _$this._sort = sort;

  int _pageNumber;
  int get pageNumber => _$this._pageNumber;
  set pageNumber(int pageNumber) => _$this._pageNumber = pageNumber;

  int _pageSize;
  int get pageSize => _$this._pageSize;
  set pageSize(int pageSize) => _$this._pageSize = pageSize;

  bool _paged;
  bool get paged => _$this._paged;
  set paged(bool paged) => _$this._paged = paged;

  bool _unpaged;
  bool get unpaged => _$this._unpaged;
  set unpaged(bool unpaged) => _$this._unpaged = unpaged;

  int _offset;
  int get offset => _$this._offset;
  set offset(int offset) => _$this._offset = offset;

  PageableBuilder();

  PageableBuilder get _$this {
    if (_$v != null) {
      _sort = _$v.sort?.toBuilder();
      _pageNumber = _$v.pageNumber;
      _pageSize = _$v.pageSize;
      _paged = _$v.paged;
      _unpaged = _$v.unpaged;
      _offset = _$v.offset;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Pageable other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Pageable;
  }

  @override
  void update(void Function(PageableBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Pageable build() {
    _$Pageable _$result;
    try {
      _$result = _$v ??
          new _$Pageable._(
              sort: _sort?.build(),
              pageNumber: pageNumber,
              pageSize: pageSize,
              paged: paged,
              unpaged: unpaged,
              offset: offset);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'sort';
        _sort?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Pageable', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
