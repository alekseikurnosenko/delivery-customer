// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_picked_up.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrderPickedUp> _$orderPickedUpSerializer =
    new _$OrderPickedUpSerializer();

class _$OrderPickedUpSerializer implements StructuredSerializer<OrderPickedUp> {
  @override
  final Iterable<Type> types = const [OrderPickedUp, _$OrderPickedUp];
  @override
  final String wireName = 'OrderPickedUp';

  @override
  Iterable<Object> serialize(Serializers serializers, OrderPickedUp object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.orderId != null) {
      result
        ..add('orderId')
        ..add(serializers.serialize(object.orderId,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(OrderStatus)));
    }
    if (object.routingKey != null) {
      result
        ..add('routingKey')
        ..add(serializers.serialize(object.routingKey,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  OrderPickedUp deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderPickedUpBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'orderId':
          result.orderId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(OrderStatus)) as OrderStatus;
          break;
        case 'routingKey':
          result.routingKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$OrderPickedUp extends OrderPickedUp {
  @override
  final String orderId;
  @override
  final OrderStatus status;
  @override
  final String routingKey;

  factory _$OrderPickedUp([void Function(OrderPickedUpBuilder) updates]) =>
      (new OrderPickedUpBuilder()..update(updates)).build();

  _$OrderPickedUp._({this.orderId, this.status, this.routingKey}) : super._();

  @override
  OrderPickedUp rebuild(void Function(OrderPickedUpBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderPickedUpBuilder toBuilder() => new OrderPickedUpBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderPickedUp &&
        orderId == other.orderId &&
        status == other.status &&
        routingKey == other.routingKey;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, orderId.hashCode), status.hashCode), routingKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderPickedUp')
          ..add('orderId', orderId)
          ..add('status', status)
          ..add('routingKey', routingKey))
        .toString();
  }
}

class OrderPickedUpBuilder
    implements Builder<OrderPickedUp, OrderPickedUpBuilder> {
  _$OrderPickedUp _$v;

  String _orderId;
  String get orderId => _$this._orderId;
  set orderId(String orderId) => _$this._orderId = orderId;

  OrderStatus _status;
  OrderStatus get status => _$this._status;
  set status(OrderStatus status) => _$this._status = status;

  String _routingKey;
  String get routingKey => _$this._routingKey;
  set routingKey(String routingKey) => _$this._routingKey = routingKey;

  OrderPickedUpBuilder();

  OrderPickedUpBuilder get _$this {
    if (_$v != null) {
      _orderId = _$v.orderId;
      _status = _$v.status;
      _routingKey = _$v.routingKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderPickedUp other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrderPickedUp;
  }

  @override
  void update(void Function(OrderPickedUpBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrderPickedUp build() {
    final _$result = _$v ??
        new _$OrderPickedUp._(
            orderId: orderId, status: status, routingKey: routingKey);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
