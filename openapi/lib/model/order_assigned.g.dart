// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_assigned.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrderAssigned> _$orderAssignedSerializer =
    new _$OrderAssignedSerializer();

class _$OrderAssignedSerializer implements StructuredSerializer<OrderAssigned> {
  @override
  final Iterable<Type> types = const [OrderAssigned, _$OrderAssigned];
  @override
  final String wireName = 'OrderAssigned';

  @override
  Iterable<Object> serialize(Serializers serializers, OrderAssigned object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.orderId != null) {
      result
        ..add('orderId')
        ..add(serializers.serialize(object.orderId,
            specifiedType: const FullType(String)));
    }
    if (object.courierId != null) {
      result
        ..add('courierId')
        ..add(serializers.serialize(object.courierId,
            specifiedType: const FullType(String)));
    }
    if (object.courierFullName != null) {
      result
        ..add('courierFullName')
        ..add(serializers.serialize(object.courierFullName,
            specifiedType: const FullType(String)));
    }
    if (object.restaurantId != null) {
      result
        ..add('restaurantId')
        ..add(serializers.serialize(object.restaurantId,
            specifiedType: const FullType(String)));
    }
    if (object.restaurantName != null) {
      result
        ..add('restaurantName')
        ..add(serializers.serialize(object.restaurantName,
            specifiedType: const FullType(String)));
    }
    if (object.restaurantAddress != null) {
      result
        ..add('restaurantAddress')
        ..add(serializers.serialize(object.restaurantAddress,
            specifiedType: const FullType(Address)));
    }
    if (object.deliveryAddress != null) {
      result
        ..add('deliveryAddress')
        ..add(serializers.serialize(object.deliveryAddress,
            specifiedType: const FullType(Address)));
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
  OrderAssigned deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderAssignedBuilder();

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
        case 'courierId':
          result.courierId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'courierFullName':
          result.courierFullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'restaurantId':
          result.restaurantId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'restaurantName':
          result.restaurantName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'restaurantAddress':
          result.restaurantAddress.replace(serializers.deserialize(value,
              specifiedType: const FullType(Address)) as Address);
          break;
        case 'deliveryAddress':
          result.deliveryAddress.replace(serializers.deserialize(value,
              specifiedType: const FullType(Address)) as Address);
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

class _$OrderAssigned extends OrderAssigned {
  @override
  final String orderId;
  @override
  final String courierId;
  @override
  final String courierFullName;
  @override
  final String restaurantId;
  @override
  final String restaurantName;
  @override
  final Address restaurantAddress;
  @override
  final Address deliveryAddress;
  @override
  final OrderStatus status;
  @override
  final String routingKey;

  factory _$OrderAssigned([void Function(OrderAssignedBuilder) updates]) =>
      (new OrderAssignedBuilder()..update(updates)).build();

  _$OrderAssigned._(
      {this.orderId,
      this.courierId,
      this.courierFullName,
      this.restaurantId,
      this.restaurantName,
      this.restaurantAddress,
      this.deliveryAddress,
      this.status,
      this.routingKey})
      : super._();

  @override
  OrderAssigned rebuild(void Function(OrderAssignedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderAssignedBuilder toBuilder() => new OrderAssignedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderAssigned &&
        orderId == other.orderId &&
        courierId == other.courierId &&
        courierFullName == other.courierFullName &&
        restaurantId == other.restaurantId &&
        restaurantName == other.restaurantName &&
        restaurantAddress == other.restaurantAddress &&
        deliveryAddress == other.deliveryAddress &&
        status == other.status &&
        routingKey == other.routingKey;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, orderId.hashCode),
                                    courierId.hashCode),
                                courierFullName.hashCode),
                            restaurantId.hashCode),
                        restaurantName.hashCode),
                    restaurantAddress.hashCode),
                deliveryAddress.hashCode),
            status.hashCode),
        routingKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderAssigned')
          ..add('orderId', orderId)
          ..add('courierId', courierId)
          ..add('courierFullName', courierFullName)
          ..add('restaurantId', restaurantId)
          ..add('restaurantName', restaurantName)
          ..add('restaurantAddress', restaurantAddress)
          ..add('deliveryAddress', deliveryAddress)
          ..add('status', status)
          ..add('routingKey', routingKey))
        .toString();
  }
}

class OrderAssignedBuilder
    implements Builder<OrderAssigned, OrderAssignedBuilder> {
  _$OrderAssigned _$v;

  String _orderId;
  String get orderId => _$this._orderId;
  set orderId(String orderId) => _$this._orderId = orderId;

  String _courierId;
  String get courierId => _$this._courierId;
  set courierId(String courierId) => _$this._courierId = courierId;

  String _courierFullName;
  String get courierFullName => _$this._courierFullName;
  set courierFullName(String courierFullName) =>
      _$this._courierFullName = courierFullName;

  String _restaurantId;
  String get restaurantId => _$this._restaurantId;
  set restaurantId(String restaurantId) => _$this._restaurantId = restaurantId;

  String _restaurantName;
  String get restaurantName => _$this._restaurantName;
  set restaurantName(String restaurantName) =>
      _$this._restaurantName = restaurantName;

  AddressBuilder _restaurantAddress;
  AddressBuilder get restaurantAddress =>
      _$this._restaurantAddress ??= new AddressBuilder();
  set restaurantAddress(AddressBuilder restaurantAddress) =>
      _$this._restaurantAddress = restaurantAddress;

  AddressBuilder _deliveryAddress;
  AddressBuilder get deliveryAddress =>
      _$this._deliveryAddress ??= new AddressBuilder();
  set deliveryAddress(AddressBuilder deliveryAddress) =>
      _$this._deliveryAddress = deliveryAddress;

  OrderStatus _status;
  OrderStatus get status => _$this._status;
  set status(OrderStatus status) => _$this._status = status;

  String _routingKey;
  String get routingKey => _$this._routingKey;
  set routingKey(String routingKey) => _$this._routingKey = routingKey;

  OrderAssignedBuilder();

  OrderAssignedBuilder get _$this {
    if (_$v != null) {
      _orderId = _$v.orderId;
      _courierId = _$v.courierId;
      _courierFullName = _$v.courierFullName;
      _restaurantId = _$v.restaurantId;
      _restaurantName = _$v.restaurantName;
      _restaurantAddress = _$v.restaurantAddress?.toBuilder();
      _deliveryAddress = _$v.deliveryAddress?.toBuilder();
      _status = _$v.status;
      _routingKey = _$v.routingKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderAssigned other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrderAssigned;
  }

  @override
  void update(void Function(OrderAssignedBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrderAssigned build() {
    _$OrderAssigned _$result;
    try {
      _$result = _$v ??
          new _$OrderAssigned._(
              orderId: orderId,
              courierId: courierId,
              courierFullName: courierFullName,
              restaurantId: restaurantId,
              restaurantName: restaurantName,
              restaurantAddress: _restaurantAddress?.build(),
              deliveryAddress: _deliveryAddress?.build(),
              status: status,
              routingKey: routingKey);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'restaurantAddress';
        _restaurantAddress?.build();
        _$failedField = 'deliveryAddress';
        _deliveryAddress?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OrderAssigned', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
