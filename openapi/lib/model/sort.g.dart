// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sort.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Sort> _$sortSerializer = new _$SortSerializer();

class _$SortSerializer implements StructuredSerializer<Sort> {
  @override
  final Iterable<Type> types = const [Sort, _$Sort];
  @override
  final String wireName = 'Sort';

  @override
  Iterable<Object> serialize(Serializers serializers, Sort object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.sorted != null) {
      result
        ..add('sorted')
        ..add(serializers.serialize(object.sorted,
            specifiedType: const FullType(bool)));
    }
    if (object.unsorted != null) {
      result
        ..add('unsorted')
        ..add(serializers.serialize(object.unsorted,
            specifiedType: const FullType(bool)));
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
  Sort deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SortBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'sorted':
          result.sorted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'unsorted':
          result.unsorted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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

class _$Sort extends Sort {
  @override
  final bool sorted;
  @override
  final bool unsorted;
  @override
  final bool empty;

  factory _$Sort([void Function(SortBuilder) updates]) =>
      (new SortBuilder()..update(updates)).build();

  _$Sort._({this.sorted, this.unsorted, this.empty}) : super._();

  @override
  Sort rebuild(void Function(SortBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SortBuilder toBuilder() => new SortBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Sort &&
        sorted == other.sorted &&
        unsorted == other.unsorted &&
        empty == other.empty;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, sorted.hashCode), unsorted.hashCode), empty.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Sort')
          ..add('sorted', sorted)
          ..add('unsorted', unsorted)
          ..add('empty', empty))
        .toString();
  }
}

class SortBuilder implements Builder<Sort, SortBuilder> {
  _$Sort _$v;

  bool _sorted;
  bool get sorted => _$this._sorted;
  set sorted(bool sorted) => _$this._sorted = sorted;

  bool _unsorted;
  bool get unsorted => _$this._unsorted;
  set unsorted(bool unsorted) => _$this._unsorted = unsorted;

  bool _empty;
  bool get empty => _$this._empty;
  set empty(bool empty) => _$this._empty = empty;

  SortBuilder();

  SortBuilder get _$this {
    if (_$v != null) {
      _sorted = _$v.sorted;
      _unsorted = _$v.unsorted;
      _empty = _$v.empty;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Sort other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Sort;
  }

  @override
  void update(void Function(SortBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Sort build() {
    final _$result =
        _$v ?? new _$Sort._(sorted: sorted, unsorted: unsorted, empty: empty);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
