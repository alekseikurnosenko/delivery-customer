// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrderItem> _$orderItemSerializer = new _$OrderItemSerializer();

class _$OrderItemSerializer implements StructuredSerializer<OrderItem> {
  @override
  final Iterable<Type> types = const [OrderItem, _$OrderItem];
  @override
  final String wireName = 'OrderItem';

  @override
  Iterable<Object> serialize(Serializers serializers, OrderItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.dish != null) {
      result
        ..add('dish')
        ..add(serializers.serialize(object.dish,
            specifiedType: const FullType(Dish)));
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
  OrderItem deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'dish':
          result.dish.replace(serializers.deserialize(value,
              specifiedType: const FullType(Dish)) as Dish);
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

class _$OrderItem extends OrderItem {
  @override
  final Dish dish;
  @override
  final int quantity;

  factory _$OrderItem([void Function(OrderItemBuilder) updates]) =>
      (new OrderItemBuilder()..update(updates)).build();

  _$OrderItem._({this.dish, this.quantity}) : super._();

  @override
  OrderItem rebuild(void Function(OrderItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderItemBuilder toBuilder() => new OrderItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderItem &&
        dish == other.dish &&
        quantity == other.quantity;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, dish.hashCode), quantity.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderItem')
          ..add('dish', dish)
          ..add('quantity', quantity))
        .toString();
  }
}

class OrderItemBuilder implements Builder<OrderItem, OrderItemBuilder> {
  _$OrderItem _$v;

  DishBuilder _dish;
  DishBuilder get dish => _$this._dish ??= new DishBuilder();
  set dish(DishBuilder dish) => _$this._dish = dish;

  int _quantity;
  int get quantity => _$this._quantity;
  set quantity(int quantity) => _$this._quantity = quantity;

  OrderItemBuilder();

  OrderItemBuilder get _$this {
    if (_$v != null) {
      _dish = _$v.dish?.toBuilder();
      _quantity = _$v.quantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrderItem;
  }

  @override
  void update(void Function(OrderItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrderItem build() {
    _$OrderItem _$result;
    try {
      _$result =
          _$v ?? new _$OrderItem._(dish: _dish?.build(), quantity: quantity);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'dish';
        _dish?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OrderItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
