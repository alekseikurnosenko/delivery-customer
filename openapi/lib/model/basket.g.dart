// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Basket> _$basketSerializer = new _$BasketSerializer();

class _$BasketSerializer implements StructuredSerializer<Basket> {
  @override
  final Iterable<Type> types = const [Basket, _$Basket];
  @override
  final String wireName = 'Basket';

  @override
  Iterable<Object> serialize(Serializers serializers, Basket object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.restaurant != null) {
      result
        ..add('restaurant')
        ..add(serializers.serialize(object.restaurant,
            specifiedType: const FullType(Restaurant)));
    }
    if (object.items != null) {
      result
        ..add('items')
        ..add(serializers.serialize(object.items,
            specifiedType:
                const FullType(BuiltList, const [const FullType(BasketItem)])));
    }
    if (object.totalAmount != null) {
      result
        ..add('totalAmount')
        ..add(serializers.serialize(object.totalAmount,
            specifiedType: const FullType(MoneyView)));
    }
    if (object.isAboveMinimumOrder != null) {
      result
        ..add('isAboveMinimumOrder')
        ..add(serializers.serialize(object.isAboveMinimumOrder,
            specifiedType: const FullType(bool)));
    }
    if (object.aboveMinimumOrder != null) {
      result
        ..add('aboveMinimumOrder')
        ..add(serializers.serialize(object.aboveMinimumOrder,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  Basket deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BasketBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'restaurant':
          result.restaurant.replace(serializers.deserialize(value,
              specifiedType: const FullType(Restaurant)) as Restaurant);
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BasketItem)]))
              as BuiltList<Object>);
          break;
        case 'totalAmount':
          result.totalAmount.replace(serializers.deserialize(value,
              specifiedType: const FullType(MoneyView)) as MoneyView);
          break;
        case 'isAboveMinimumOrder':
          result.isAboveMinimumOrder = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'aboveMinimumOrder':
          result.aboveMinimumOrder = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Basket extends Basket {
  @override
  final Restaurant restaurant;
  @override
  final BuiltList<BasketItem> items;
  @override
  final MoneyView totalAmount;
  @override
  final bool isAboveMinimumOrder;
  @override
  final bool aboveMinimumOrder;

  factory _$Basket([void Function(BasketBuilder) updates]) =>
      (new BasketBuilder()..update(updates)).build();

  _$Basket._(
      {this.restaurant,
      this.items,
      this.totalAmount,
      this.isAboveMinimumOrder,
      this.aboveMinimumOrder})
      : super._();

  @override
  Basket rebuild(void Function(BasketBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BasketBuilder toBuilder() => new BasketBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Basket &&
        restaurant == other.restaurant &&
        items == other.items &&
        totalAmount == other.totalAmount &&
        isAboveMinimumOrder == other.isAboveMinimumOrder &&
        aboveMinimumOrder == other.aboveMinimumOrder;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, restaurant.hashCode), items.hashCode),
                totalAmount.hashCode),
            isAboveMinimumOrder.hashCode),
        aboveMinimumOrder.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Basket')
          ..add('restaurant', restaurant)
          ..add('items', items)
          ..add('totalAmount', totalAmount)
          ..add('isAboveMinimumOrder', isAboveMinimumOrder)
          ..add('aboveMinimumOrder', aboveMinimumOrder))
        .toString();
  }
}

class BasketBuilder implements Builder<Basket, BasketBuilder> {
  _$Basket _$v;

  RestaurantBuilder _restaurant;
  RestaurantBuilder get restaurant =>
      _$this._restaurant ??= new RestaurantBuilder();
  set restaurant(RestaurantBuilder restaurant) =>
      _$this._restaurant = restaurant;

  ListBuilder<BasketItem> _items;
  ListBuilder<BasketItem> get items =>
      _$this._items ??= new ListBuilder<BasketItem>();
  set items(ListBuilder<BasketItem> items) => _$this._items = items;

  MoneyViewBuilder _totalAmount;
  MoneyViewBuilder get totalAmount =>
      _$this._totalAmount ??= new MoneyViewBuilder();
  set totalAmount(MoneyViewBuilder totalAmount) =>
      _$this._totalAmount = totalAmount;

  bool _isAboveMinimumOrder;
  bool get isAboveMinimumOrder => _$this._isAboveMinimumOrder;
  set isAboveMinimumOrder(bool isAboveMinimumOrder) =>
      _$this._isAboveMinimumOrder = isAboveMinimumOrder;

  bool _aboveMinimumOrder;
  bool get aboveMinimumOrder => _$this._aboveMinimumOrder;
  set aboveMinimumOrder(bool aboveMinimumOrder) =>
      _$this._aboveMinimumOrder = aboveMinimumOrder;

  BasketBuilder();

  BasketBuilder get _$this {
    if (_$v != null) {
      _restaurant = _$v.restaurant?.toBuilder();
      _items = _$v.items?.toBuilder();
      _totalAmount = _$v.totalAmount?.toBuilder();
      _isAboveMinimumOrder = _$v.isAboveMinimumOrder;
      _aboveMinimumOrder = _$v.aboveMinimumOrder;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Basket other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Basket;
  }

  @override
  void update(void Function(BasketBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Basket build() {
    _$Basket _$result;
    try {
      _$result = _$v ??
          new _$Basket._(
              restaurant: _restaurant?.build(),
              items: _items?.build(),
              totalAmount: _totalAmount?.build(),
              isAboveMinimumOrder: isAboveMinimumOrder,
              aboveMinimumOrder: aboveMinimumOrder);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'restaurant';
        _restaurant?.build();
        _$failedField = 'items';
        _items?.build();
        _$failedField = 'totalAmount';
        _totalAmount?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Basket', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
