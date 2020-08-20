// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_placed.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrderPlaced> _$orderPlacedSerializer = new _$OrderPlacedSerializer();

class _$OrderPlacedSerializer implements StructuredSerializer<OrderPlaced> {
  @override
  final Iterable<Type> types = const [OrderPlaced, _$OrderPlaced];
  @override
  final String wireName = 'OrderPlaced';

  @override
  Iterable<Object> serialize(Serializers serializers, OrderPlaced object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.userId != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(object.userId,
            specifiedType: const FullType(String)));
    }
    if (object.orderId != null) {
      result
        ..add('orderId')
        ..add(serializers.serialize(object.orderId,
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
  OrderPlaced deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderPlacedBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'orderId':
          result.orderId = serializers.deserialize(value,
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
        case 'totalAmount':
          result.totalAmount.replace(serializers.deserialize(value,
              specifiedType: const FullType(MoneyView)) as MoneyView);
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

class _$OrderPlaced extends OrderPlaced {
  @override
  final String userId;
  @override
  final String orderId;
  @override
  final String restaurantId;
  @override
  final String restaurantName;
  @override
  final MoneyView totalAmount;
  @override
  final Address deliveryAddress;
  @override
  final OrderStatus status;
  @override
  final String routingKey;

  factory _$OrderPlaced([void Function(OrderPlacedBuilder) updates]) =>
      (new OrderPlacedBuilder()..update(updates)).build();

  _$OrderPlaced._(
      {this.userId,
      this.orderId,
      this.restaurantId,
      this.restaurantName,
      this.totalAmount,
      this.deliveryAddress,
      this.status,
      this.routingKey})
      : super._();

  @override
  OrderPlaced rebuild(void Function(OrderPlacedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderPlacedBuilder toBuilder() => new OrderPlacedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderPlaced &&
        userId == other.userId &&
        orderId == other.orderId &&
        restaurantId == other.restaurantId &&
        restaurantName == other.restaurantName &&
        totalAmount == other.totalAmount &&
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
                        $jc($jc($jc(0, userId.hashCode), orderId.hashCode),
                            restaurantId.hashCode),
                        restaurantName.hashCode),
                    totalAmount.hashCode),
                deliveryAddress.hashCode),
            status.hashCode),
        routingKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderPlaced')
          ..add('userId', userId)
          ..add('orderId', orderId)
          ..add('restaurantId', restaurantId)
          ..add('restaurantName', restaurantName)
          ..add('totalAmount', totalAmount)
          ..add('deliveryAddress', deliveryAddress)
          ..add('status', status)
          ..add('routingKey', routingKey))
        .toString();
  }
}

class OrderPlacedBuilder implements Builder<OrderPlaced, OrderPlacedBuilder> {
  _$OrderPlaced _$v;

  String _userId;
  String get userId => _$this._userId;
  set userId(String userId) => _$this._userId = userId;

  String _orderId;
  String get orderId => _$this._orderId;
  set orderId(String orderId) => _$this._orderId = orderId;

  String _restaurantId;
  String get restaurantId => _$this._restaurantId;
  set restaurantId(String restaurantId) => _$this._restaurantId = restaurantId;

  String _restaurantName;
  String get restaurantName => _$this._restaurantName;
  set restaurantName(String restaurantName) =>
      _$this._restaurantName = restaurantName;

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

  OrderStatus _status;
  OrderStatus get status => _$this._status;
  set status(OrderStatus status) => _$this._status = status;

  String _routingKey;
  String get routingKey => _$this._routingKey;
  set routingKey(String routingKey) => _$this._routingKey = routingKey;

  OrderPlacedBuilder();

  OrderPlacedBuilder get _$this {
    if (_$v != null) {
      _userId = _$v.userId;
      _orderId = _$v.orderId;
      _restaurantId = _$v.restaurantId;
      _restaurantName = _$v.restaurantName;
      _totalAmount = _$v.totalAmount?.toBuilder();
      _deliveryAddress = _$v.deliveryAddress?.toBuilder();
      _status = _$v.status;
      _routingKey = _$v.routingKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderPlaced other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrderPlaced;
  }

  @override
  void update(void Function(OrderPlacedBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrderPlaced build() {
    _$OrderPlaced _$result;
    try {
      _$result = _$v ??
          new _$OrderPlaced._(
              userId: userId,
              orderId: orderId,
              restaurantId: restaurantId,
              restaurantName: restaurantName,
              totalAmount: _totalAmount?.build(),
              deliveryAddress: _deliveryAddress?.build(),
              status: status,
              routingKey: routingKey);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'totalAmount';
        _totalAmount?.build();
        _$failedField = 'deliveryAddress';
        _deliveryAddress?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OrderPlaced', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
