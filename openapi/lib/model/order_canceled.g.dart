// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_canceled.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrderCanceled> _$orderCanceledSerializer =
    new _$OrderCanceledSerializer();

class _$OrderCanceledSerializer implements StructuredSerializer<OrderCanceled> {
  @override
  final Iterable<Type> types = const [OrderCanceled, _$OrderCanceled];
  @override
  final String wireName = 'OrderCanceled';

  @override
  Iterable<Object> serialize(Serializers serializers, OrderCanceled object,
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
    if (object.reason != null) {
      result
        ..add('reason')
        ..add(serializers.serialize(object.reason,
            specifiedType: const FullType(String)));
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
  OrderCanceled deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderCanceledBuilder();

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
        case 'reason':
          result.reason = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$OrderCanceled extends OrderCanceled {
  @override
  final String orderId;
  @override
  final OrderStatus status;
  @override
  final String reason;
  @override
  final String routingKey;

  factory _$OrderCanceled([void Function(OrderCanceledBuilder) updates]) =>
      (new OrderCanceledBuilder()..update(updates)).build();

  _$OrderCanceled._({this.orderId, this.status, this.reason, this.routingKey})
      : super._();

  @override
  OrderCanceled rebuild(void Function(OrderCanceledBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderCanceledBuilder toBuilder() => new OrderCanceledBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderCanceled &&
        orderId == other.orderId &&
        status == other.status &&
        reason == other.reason &&
        routingKey == other.routingKey;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, orderId.hashCode), status.hashCode), reason.hashCode),
        routingKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderCanceled')
          ..add('orderId', orderId)
          ..add('status', status)
          ..add('reason', reason)
          ..add('routingKey', routingKey))
        .toString();
  }
}

class OrderCanceledBuilder
    implements Builder<OrderCanceled, OrderCanceledBuilder> {
  _$OrderCanceled _$v;

  String _orderId;
  String get orderId => _$this._orderId;
  set orderId(String orderId) => _$this._orderId = orderId;

  OrderStatus _status;
  OrderStatus get status => _$this._status;
  set status(OrderStatus status) => _$this._status = status;

  String _reason;
  String get reason => _$this._reason;
  set reason(String reason) => _$this._reason = reason;

  String _routingKey;
  String get routingKey => _$this._routingKey;
  set routingKey(String routingKey) => _$this._routingKey = routingKey;

  OrderCanceledBuilder();

  OrderCanceledBuilder get _$this {
    if (_$v != null) {
      _orderId = _$v.orderId;
      _status = _$v.status;
      _reason = _$v.reason;
      _routingKey = _$v.routingKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderCanceled other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrderCanceled;
  }

  @override
  void update(void Function(OrderCanceledBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrderCanceled build() {
    final _$result = _$v ??
        new _$OrderCanceled._(
            orderId: orderId,
            status: status,
            reason: reason,
            routingKey: routingKey);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
