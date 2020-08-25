// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_order.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PageOrder> _$pageOrderSerializer = new _$PageOrderSerializer();

class _$PageOrderSerializer implements StructuredSerializer<PageOrder> {
  @override
  final Iterable<Type> types = const [PageOrder, _$PageOrder];
  @override
  final String wireName = 'PageOrder';

  @override
  Iterable<Object> serialize(Serializers serializers, PageOrder object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.totalPages != null) {
      result
        ..add('totalPages')
        ..add(serializers.serialize(object.totalPages,
            specifiedType: const FullType(int)));
    }
    if (object.totalElements != null) {
      result
        ..add('totalElements')
        ..add(serializers.serialize(object.totalElements,
            specifiedType: const FullType(int)));
    }
    if (object.first != null) {
      result
        ..add('first')
        ..add(serializers.serialize(object.first,
            specifiedType: const FullType(bool)));
    }
    if (object.number != null) {
      result
        ..add('number')
        ..add(serializers.serialize(object.number,
            specifiedType: const FullType(int)));
    }
    if (object.sort != null) {
      result
        ..add('sort')
        ..add(serializers.serialize(object.sort,
            specifiedType: const FullType(Sort)));
    }
    if (object.numberOfElements != null) {
      result
        ..add('numberOfElements')
        ..add(serializers.serialize(object.numberOfElements,
            specifiedType: const FullType(int)));
    }
    if (object.pageable != null) {
      result
        ..add('pageable')
        ..add(serializers.serialize(object.pageable,
            specifiedType: const FullType(Pageable)));
    }
    if (object.last != null) {
      result
        ..add('last')
        ..add(serializers.serialize(object.last,
            specifiedType: const FullType(bool)));
    }
    if (object.size != null) {
      result
        ..add('size')
        ..add(serializers.serialize(object.size,
            specifiedType: const FullType(int)));
    }
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Order)])));
    }
    if (object.empty != null) {
      result
        ..add('empty')
        ..add(serializers.serialize(object.empty,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  PageOrder deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PageOrderBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'totalPages':
          result.totalPages = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'totalElements':
          result.totalElements = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'first':
          result.first = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sort':
          result.sort.replace(serializers.deserialize(value,
              specifiedType: const FullType(Sort)) as Sort);
          break;
        case 'numberOfElements':
          result.numberOfElements = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pageable':
          result.pageable.replace(serializers.deserialize(value,
              specifiedType: const FullType(Pageable)) as Pageable);
          break;
        case 'last':
          result.last = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'content':
          result.content.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Order)]))
              as BuiltList<Object>);
          break;
        case 'empty':
          result.empty = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$PageOrder extends PageOrder {
  @override
  final int totalPages;
  @override
  final int totalElements;
  @override
  final bool first;
  @override
  final int number;
  @override
  final Sort sort;
  @override
  final int numberOfElements;
  @override
  final Pageable pageable;
  @override
  final bool last;
  @override
  final int size;
  @override
  final BuiltList<Order> content;
  @override
  final bool empty;

  factory _$PageOrder([void Function(PageOrderBuilder) updates]) =>
      (new PageOrderBuilder()..update(updates)).build();

  _$PageOrder._(
      {this.totalPages,
      this.totalElements,
      this.first,
      this.number,
      this.sort,
      this.numberOfElements,
      this.pageable,
      this.last,
      this.size,
      this.content,
      this.empty})
      : super._();

  @override
  PageOrder rebuild(void Function(PageOrderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PageOrderBuilder toBuilder() => new PageOrderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageOrder &&
        totalPages == other.totalPages &&
        totalElements == other.totalElements &&
        first == other.first &&
        number == other.number &&
        sort == other.sort &&
        numberOfElements == other.numberOfElements &&
        pageable == other.pageable &&
        last == other.last &&
        size == other.size &&
        content == other.content &&
        empty == other.empty;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, totalPages.hashCode),
                                            totalElements.hashCode),
                                        first.hashCode),
                                    number.hashCode),
                                sort.hashCode),
                            numberOfElements.hashCode),
                        pageable.hashCode),
                    last.hashCode),
                size.hashCode),
            content.hashCode),
        empty.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PageOrder')
          ..add('totalPages', totalPages)
          ..add('totalElements', totalElements)
          ..add('first', first)
          ..add('number', number)
          ..add('sort', sort)
          ..add('numberOfElements', numberOfElements)
          ..add('pageable', pageable)
          ..add('last', last)
          ..add('size', size)
          ..add('content', content)
          ..add('empty', empty))
        .toString();
  }
}

class PageOrderBuilder implements Builder<PageOrder, PageOrderBuilder> {
  _$PageOrder _$v;

  int _totalPages;
  int get totalPages => _$this._totalPages;
  set totalPages(int totalPages) => _$this._totalPages = totalPages;

  int _totalElements;
  int get totalElements => _$this._totalElements;
  set totalElements(int totalElements) => _$this._totalElements = totalElements;

  bool _first;
  bool get first => _$this._first;
  set first(bool first) => _$this._first = first;

  int _number;
  int get number => _$this._number;
  set number(int number) => _$this._number = number;

  SortBuilder _sort;
  SortBuilder get sort => _$this._sort ??= new SortBuilder();
  set sort(SortBuilder sort) => _$this._sort = sort;

  int _numberOfElements;
  int get numberOfElements => _$this._numberOfElements;
  set numberOfElements(int numberOfElements) =>
      _$this._numberOfElements = numberOfElements;

  PageableBuilder _pageable;
  PageableBuilder get pageable => _$this._pageable ??= new PageableBuilder();
  set pageable(PageableBuilder pageable) => _$this._pageable = pageable;

  bool _last;
  bool get last => _$this._last;
  set last(bool last) => _$this._last = last;

  int _size;
  int get size => _$this._size;
  set size(int size) => _$this._size = size;

  ListBuilder<Order> _content;
  ListBuilder<Order> get content =>
      _$this._content ??= new ListBuilder<Order>();
  set content(ListBuilder<Order> content) => _$this._content = content;

  bool _empty;
  bool get empty => _$this._empty;
  set empty(bool empty) => _$this._empty = empty;

  PageOrderBuilder();

  PageOrderBuilder get _$this {
    if (_$v != null) {
      _totalPages = _$v.totalPages;
      _totalElements = _$v.totalElements;
      _first = _$v.first;
      _number = _$v.number;
      _sort = _$v.sort?.toBuilder();
      _numberOfElements = _$v.numberOfElements;
      _pageable = _$v.pageable?.toBuilder();
      _last = _$v.last;
      _size = _$v.size;
      _content = _$v.content?.toBuilder();
      _empty = _$v.empty;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PageOrder other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PageOrder;
  }

  @override
  void update(void Function(PageOrderBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PageOrder build() {
    _$PageOrder _$result;
    try {
      _$result = _$v ??
          new _$PageOrder._(
              totalPages: totalPages,
              totalElements: totalElements,
              first: first,
              number: number,
              sort: _sort?.build(),
              numberOfElements: numberOfElements,
              pageable: _pageable?.build(),
              last: last,
              size: size,
              content: _content?.build(),
              empty: empty);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'sort';
        _sort?.build();

        _$failedField = 'pageable';
        _pageable?.build();

        _$failedField = 'content';
        _content?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PageOrder', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
