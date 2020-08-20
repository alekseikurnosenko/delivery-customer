// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderStatus _$canceled = const OrderStatus._('canceled');
const OrderStatus _$placed = const OrderStatus._('placed');
const OrderStatus _$paid = const OrderStatus._('paid');
const OrderStatus _$preparing = const OrderStatus._('preparing');
const OrderStatus _$awaitingPickup = const OrderStatus._('awaitingPickup');
const OrderStatus _$inDelivery = const OrderStatus._('inDelivery');
const OrderStatus _$delivered = const OrderStatus._('delivered');

OrderStatus _$valueOf(String name) {
  switch (name) {
    case 'canceled':
      return _$canceled;
    case 'placed':
      return _$placed;
    case 'paid':
      return _$paid;
    case 'preparing':
      return _$preparing;
    case 'awaitingPickup':
      return _$awaitingPickup;
    case 'inDelivery':
      return _$inDelivery;
    case 'delivered':
      return _$delivered;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<OrderStatus> _$values =
    new BuiltSet<OrderStatus>(const <OrderStatus>[
  _$canceled,
  _$placed,
  _$paid,
  _$preparing,
  _$awaitingPickup,
  _$inDelivery,
  _$delivered,
]);

class _$OrderStatusMeta {
  const _$OrderStatusMeta();
  OrderStatus get canceled => _$canceled;
  OrderStatus get placed => _$placed;
  OrderStatus get paid => _$paid;
  OrderStatus get preparing => _$preparing;
  OrderStatus get awaitingPickup => _$awaitingPickup;
  OrderStatus get inDelivery => _$inDelivery;
  OrderStatus get delivered => _$delivered;
  OrderStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<OrderStatus> get values => _$values;
}

abstract class _$OrderStatusMixin {
  // ignore: non_constant_identifier_names
  _$OrderStatusMeta get OrderStatus => const _$OrderStatusMeta();
}

Serializer<OrderStatus> _$orderStatusSerializer = new _$OrderStatusSerializer();

class _$OrderStatusSerializer implements PrimitiveSerializer<OrderStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'canceled': 'Canceled',
    'placed': 'Placed',
    'paid': 'Paid',
    'preparing': 'Preparing',
    'awaitingPickup': 'AwaitingPickup',
    'inDelivery': 'InDelivery',
    'delivered': 'Delivered',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Canceled': 'canceled',
    'Placed': 'placed',
    'Paid': 'paid',
    'Preparing': 'preparing',
    'AwaitingPickup': 'awaitingPickup',
    'InDelivery': 'inDelivery',
    'Delivered': 'delivered',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderStatus];
  @override
  final String wireName = 'OrderStatus';

  @override
  Object serialize(Serializers serializers, OrderStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderStatus.valueOf(_fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
