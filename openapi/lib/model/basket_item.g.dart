// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BasketItem> _$basketItemSerializer = new _$BasketItemSerializer();

class _$BasketItemSerializer implements StructuredSerializer<BasketItem> {
  @override
  final Iterable<Type> types = const [BasketItem, _$BasketItem];
  @override
  final String wireName = 'BasketItem';

  @override
  Iterable<Object> serialize(Serializers serializers, BasketItem object,
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
    if (object.totalPrice != null) {
      result
        ..add('totalPrice')
        ..add(serializers.serialize(object.totalPrice,
            specifiedType: const FullType(MoneyView)));
    }
    return result;
  }

  @override
  BasketItem deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BasketItemBuilder();

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
        case 'totalPrice':
          result.totalPrice.replace(serializers.deserialize(value,
              specifiedType: const FullType(MoneyView)) as MoneyView);
          break;
      }
    }

    return result.build();
  }
}

class _$BasketItem extends BasketItem {
  @override
  final Dish dish;
  @override
  final int quantity;
  @override
  final MoneyView totalPrice;

  factory _$BasketItem([void Function(BasketItemBuilder) updates]) =>
      (new BasketItemBuilder()..update(updates)).build();

  _$BasketItem._({this.dish, this.quantity, this.totalPrice}) : super._();

  @override
  BasketItem rebuild(void Function(BasketItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BasketItemBuilder toBuilder() => new BasketItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BasketItem &&
        dish == other.dish &&
        quantity == other.quantity &&
        totalPrice == other.totalPrice;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, dish.hashCode), quantity.hashCode), totalPrice.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BasketItem')
          ..add('dish', dish)
          ..add('quantity', quantity)
          ..add('totalPrice', totalPrice))
        .toString();
  }
}

class BasketItemBuilder implements Builder<BasketItem, BasketItemBuilder> {
  _$BasketItem _$v;

  DishBuilder _dish;
  DishBuilder get dish => _$this._dish ??= new DishBuilder();
  set dish(DishBuilder dish) => _$this._dish = dish;

  int _quantity;
  int get quantity => _$this._quantity;
  set quantity(int quantity) => _$this._quantity = quantity;

  MoneyViewBuilder _totalPrice;
  MoneyViewBuilder get totalPrice =>
      _$this._totalPrice ??= new MoneyViewBuilder();
  set totalPrice(MoneyViewBuilder totalPrice) =>
      _$this._totalPrice = totalPrice;

  BasketItemBuilder();

  BasketItemBuilder get _$this {
    if (_$v != null) {
      _dish = _$v.dish?.toBuilder();
      _quantity = _$v.quantity;
      _totalPrice = _$v.totalPrice?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BasketItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BasketItem;
  }

  @override
  void update(void Function(BasketItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BasketItem build() {
    _$BasketItem _$result;
    try {
      _$result = _$v ??
          new _$BasketItem._(
              dish: _dish?.build(),
              quantity: quantity,
              totalPrice: _totalPrice?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'dish';
        _dish?.build();

        _$failedField = 'totalPrice';
        _totalPrice?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BasketItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
