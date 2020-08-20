// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_from_basket_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RemoveFromBasketInput> _$removeFromBasketInputSerializer =
    new _$RemoveFromBasketInputSerializer();

class _$RemoveFromBasketInputSerializer
    implements StructuredSerializer<RemoveFromBasketInput> {
  @override
  final Iterable<Type> types = const [
    RemoveFromBasketInput,
    _$RemoveFromBasketInput
  ];
  @override
  final String wireName = 'RemoveFromBasketInput';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RemoveFromBasketInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.dishId != null) {
      result
        ..add('dishId')
        ..add(serializers.serialize(object.dishId,
            specifiedType: const FullType(String)));
    }
    if (object.restaurantId != null) {
      result
        ..add('restaurantId')
        ..add(serializers.serialize(object.restaurantId,
            specifiedType: const FullType(String)));
    }
    if (object.quantity != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(object.quantity,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  RemoveFromBasketInput deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RemoveFromBasketInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'dishId':
          result.dishId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'restaurantId':
          result.restaurantId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$RemoveFromBasketInput extends RemoveFromBasketInput {
  @override
  final String dishId;
  @override
  final String restaurantId;
  @override
  final int quantity;

  factory _$RemoveFromBasketInput(
          [void Function(RemoveFromBasketInputBuilder) updates]) =>
      (new RemoveFromBasketInputBuilder()..update(updates)).build();

  _$RemoveFromBasketInput._({this.dishId, this.restaurantId, this.quantity})
      : super._();

  @override
  RemoveFromBasketInput rebuild(
          void Function(RemoveFromBasketInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemoveFromBasketInputBuilder toBuilder() =>
      new RemoveFromBasketInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoveFromBasketInput &&
        dishId == other.dishId &&
        restaurantId == other.restaurantId &&
        quantity == other.quantity;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, dishId.hashCode), restaurantId.hashCode),
        quantity.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RemoveFromBasketInput')
          ..add('dishId', dishId)
          ..add('restaurantId', restaurantId)
          ..add('quantity', quantity))
        .toString();
  }
}

class RemoveFromBasketInputBuilder
    implements Builder<RemoveFromBasketInput, RemoveFromBasketInputBuilder> {
  _$RemoveFromBasketInput _$v;

  String _dishId;
  String get dishId => _$this._dishId;
  set dishId(String dishId) => _$this._dishId = dishId;

  String _restaurantId;
  String get restaurantId => _$this._restaurantId;
  set restaurantId(String restaurantId) => _$this._restaurantId = restaurantId;

  int _quantity;
  int get quantity => _$this._quantity;
  set quantity(int quantity) => _$this._quantity = quantity;

  RemoveFromBasketInputBuilder();

  RemoveFromBasketInputBuilder get _$this {
    if (_$v != null) {
      _dishId = _$v.dishId;
      _restaurantId = _$v.restaurantId;
      _quantity = _$v.quantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoveFromBasketInput other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RemoveFromBasketInput;
  }

  @override
  void update(void Function(RemoveFromBasketInputBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RemoveFromBasketInput build() {
    final _$result = _$v ??
        new _$RemoveFromBasketInput._(
            dishId: dishId, restaurantId: restaurantId, quantity: quantity);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
