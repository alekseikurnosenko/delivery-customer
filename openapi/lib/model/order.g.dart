// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Order> _$orderSerializer = new _$OrderSerializer();

class _$OrderSerializer implements StructuredSerializer<Order> {
  @override
  final Iterable<Type> types = const [Order, _$Order];
  @override
  final String wireName = 'Order';

  @override
  Iterable<Object> serialize(Serializers serializers, Order object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.totalAmount != null) {
      result
        ..add('totalAmount')
        ..add(serializers.serialize(object.totalAmount,
            specifiedType: const FullType(MoneyView)));
    }
    if (object.deliveryAddress != null) {
      result
        ..add('deliveryAddress')
        ..add(serializers.serialize(object.deliveryAddress,
            specifiedType: const FullType(Address)));
    }
    if (object.restaurant != null) {
      result
        ..add('restaurant')
        ..add(serializers.serialize(object.restaurant,
            specifiedType: const FullType(Restaurant)));
    }
    if (object.courier != null) {
      result
        ..add('courier')
        ..add(serializers.serialize(object.courier,
            specifiedType: const FullType(Courier)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(OrderStatus)));
    }
    if (object.items != null) {
      result
        ..add('items')
        ..add(serializers.serialize(object.items,
            specifiedType: const FullType(
                BuiltList, const [const FullType(OrderItemDTO)])));
    }
    return result;
  }

  @override
  Order deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'totalAmount':
          result.totalAmount.replace(serializers.deserialize(value,
              specifiedType: const FullType(MoneyView)) as MoneyView);
          break;
        case 'deliveryAddress':
          result.deliveryAddress.replace(serializers.deserialize(value,
              specifiedType: const FullType(Address)) as Address);
          break;
        case 'restaurant':
          result.restaurant.replace(serializers.deserialize(value,
              specifiedType: const FullType(Restaurant)) as Restaurant);
          break;
        case 'courier':
          result.courier.replace(serializers.deserialize(value,
              specifiedType: const FullType(Courier)) as Courier);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(OrderStatus)) as OrderStatus;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(OrderItemDTO)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Order extends Order {
  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final MoneyView totalAmount;
  @override
  final Address deliveryAddress;
  @override
  final Restaurant restaurant;
  @override
  final Courier courier;
  @override
  final OrderStatus status;
  @override
  final BuiltList<OrderItemDTO> items;

  factory _$Order([void Function(OrderBuilder) updates]) =>
      (new OrderBuilder()..update(updates)).build();

  _$Order._(
      {this.id,
      this.createdAt,
      this.totalAmount,
      this.deliveryAddress,
      this.restaurant,
      this.courier,
      this.status,
      this.items})
      : super._();

  @override
  Order rebuild(void Function(OrderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderBuilder toBuilder() => new OrderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Order &&
        id == other.id &&
        createdAt == other.createdAt &&
        totalAmount == other.totalAmount &&
        deliveryAddress == other.deliveryAddress &&
        restaurant == other.restaurant &&
        courier == other.courier &&
        status == other.status &&
        items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), createdAt.hashCode),
                            totalAmount.hashCode),
                        deliveryAddress.hashCode),
                    restaurant.hashCode),
                courier.hashCode),
            status.hashCode),
        items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Order')
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('totalAmount', totalAmount)
          ..add('deliveryAddress', deliveryAddress)
          ..add('restaurant', restaurant)
          ..add('courier', courier)
          ..add('status', status)
          ..add('items', items))
        .toString();
  }
}

class OrderBuilder implements Builder<Order, OrderBuilder> {
  _$Order _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  MoneyViewBuilder _totalAmount;
  MoneyViewBuilder get totalAmount =>
      _$this._totalAmount ??= new MoneyViewBuilder();
  set totalAmount(MoneyViewBuilder totalAmount) =>
      _$this._totalAmount = totalAmount;

  AddressBuilder _deliveryAddress;
  AddressBuilder get deliveryAddress =>
      _$this._deliveryAddress ??= new AddressBuilder();
  set deliveryAddress(AddressBuilder deliveryAddress) =>
      _$this._deliveryAddress = deliveryAddress;

  RestaurantBuilder _restaurant;
  RestaurantBuilder get restaurant =>
      _$this._restaurant ??= new RestaurantBuilder();
  set restaurant(RestaurantBuilder restaurant) =>
      _$this._restaurant = restaurant;

  CourierBuilder _courier;
  CourierBuilder get courier => _$this._courier ??= new CourierBuilder();
  set courier(CourierBuilder courier) => _$this._courier = courier;

  OrderStatus _status;
  OrderStatus get status => _$this._status;
  set status(OrderStatus status) => _$this._status = status;

  ListBuilder<OrderItemDTO> _items;
  ListBuilder<OrderItemDTO> get items =>
      _$this._items ??= new ListBuilder<OrderItemDTO>();
  set items(ListBuilder<OrderItemDTO> items) => _$this._items = items;

  OrderBuilder();

  OrderBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _createdAt = _$v.createdAt;
      _totalAmount = _$v.totalAmount?.toBuilder();
      _deliveryAddress = _$v.deliveryAddress?.toBuilder();
      _restaurant = _$v.restaurant?.toBuilder();
      _courier = _$v.courier?.toBuilder();
      _status = _$v.status;
      _items = _$v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Order other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Order;
  }

  @override
  void update(void Function(OrderBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Order build() {
    _$Order _$result;
    try {
      _$result = _$v ??
          new _$Order._(
              id: id,
              createdAt: createdAt,
              totalAmount: _totalAmount?.build(),
              deliveryAddress: _deliveryAddress?.build(),
              restaurant: _restaurant?.build(),
              courier: _courier?.build(),
              status: status,
              items: _items?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'totalAmount';
        _totalAmount?.build();
        _$failedField = 'deliveryAddress';
        _deliveryAddress?.build();
        _$failedField = 'restaurant';
        _restaurant?.build();
        _$failedField = 'courier';
        _courier?.build();

        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Order', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
