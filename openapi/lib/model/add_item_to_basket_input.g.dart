// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_item_to_basket_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AddItemToBasketInput> _$addItemToBasketInputSerializer =
    new _$AddItemToBasketInputSerializer();

class _$AddItemToBasketInputSerializer
    implements StructuredSerializer<AddItemToBasketInput> {
  @override
  final Iterable<Type> types = const [
    AddItemToBasketInput,
    _$AddItemToBasketInput
  ];
  @override
  final String wireName = 'AddItemToBasketInput';

  @override
  Iterable<Object> serialize(
      Serializers serializers, AddItemToBasketInput object,
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
    if (object.forceNewBasket != null) {
      result
        ..add('forceNewBasket')
        ..add(serializers.serialize(object.forceNewBasket,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  AddItemToBasketInput deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddItemToBasketInputBuilder();

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
        case 'forceNewBasket':
          result.forceNewBasket = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$AddItemToBasketInput extends AddItemToBasketInput {
  @override
  final String dishId;
  @override
  final String restaurantId;
  @override
  final int quantity;
  @override
  final bool forceNewBasket;

  factory _$AddItemToBasketInput(
          [void Function(AddItemToBasketInputBuilder) updates]) =>
      (new AddItemToBasketInputBuilder()..update(updates)).build();

  _$AddItemToBasketInput._(
      {this.dishId, this.restaurantId, this.quantity, this.forceNewBasket})
      : super._();

  @override
  AddItemToBasketInput rebuild(
          void Function(AddItemToBasketInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddItemToBasketInputBuilder toBuilder() =>
      new AddItemToBasketInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddItemToBasketInput &&
        dishId == other.dishId &&
        restaurantId == other.restaurantId &&
        quantity == other.quantity &&
        forceNewBasket == other.forceNewBasket;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, dishId.hashCode), restaurantId.hashCode),
            quantity.hashCode),
        forceNewBasket.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddItemToBasketInput')
          ..add('dishId', dishId)
          ..add('restaurantId', restaurantId)
          ..add('quantity', quantity)
          ..add('forceNewBasket', forceNewBasket))
        .toString();
  }
}

class AddItemToBasketInputBuilder
    implements Builder<AddItemToBasketInput, AddItemToBasketInputBuilder> {
  _$AddItemToBasketInput _$v;

  String _dishId;
  String get dishId => _$this._dishId;
  set dishId(String dishId) => _$this._dishId = dishId;

  String _restaurantId;
  String get restaurantId => _$this._restaurantId;
  set restaurantId(String restaurantId) => _$this._restaurantId = restaurantId;

  int _quantity;
  int get quantity => _$this._quantity;
  set quantity(int quantity) => _$this._quantity = quantity;

  bool _forceNewBasket;
  bool get forceNewBasket => _$this._forceNewBasket;
  set forceNewBasket(bool forceNewBasket) =>
      _$this._forceNewBasket = forceNewBasket;

  AddItemToBasketInputBuilder();

  AddItemToBasketInputBuilder get _$this {
    if (_$v != null) {
      _dishId = _$v.dishId;
      _restaurantId = _$v.restaurantId;
      _quantity = _$v.quantity;
      _forceNewBasket = _$v.forceNewBasket;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddItemToBasketInput other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddItemToBasketInput;
  }

  @override
  void update(void Function(AddItemToBasketInputBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddItemToBasketInput build() {
    final _$result = _$v ??
        new _$AddItemToBasketInput._(
            dishId: dishId,
            restaurantId: restaurantId,
            quantity: quantity,
            forceNewBasket: forceNewBasket);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
