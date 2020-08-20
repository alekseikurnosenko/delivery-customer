// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_requested.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DeliveryRequested> _$deliveryRequestedSerializer =
    new _$DeliveryRequestedSerializer();

class _$DeliveryRequestedSerializer
    implements StructuredSerializer<DeliveryRequested> {
  @override
  final Iterable<Type> types = const [DeliveryRequested, _$DeliveryRequested];
  @override
  final String wireName = 'DeliveryRequested';

  @override
  Iterable<Object> serialize(Serializers serializers, DeliveryRequested object,
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
    if (object.pickup != null) {
      result
        ..add('pickup')
        ..add(serializers.serialize(object.pickup,
            specifiedType: const FullType(Address)));
    }
    if (object.dropoff != null) {
      result
        ..add('dropoff')
        ..add(serializers.serialize(object.dropoff,
            specifiedType: const FullType(Address)));
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
  DeliveryRequested deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DeliveryRequestedBuilder();

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
        case 'pickup':
          result.pickup.replace(serializers.deserialize(value,
              specifiedType: const FullType(Address)) as Address);
          break;
        case 'dropoff':
          result.dropoff.replace(serializers.deserialize(value,
              specifiedType: const FullType(Address)) as Address);
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

class _$DeliveryRequested extends DeliveryRequested {
  @override
  final String orderId;
  @override
  final String courierId;
  @override
  final Address pickup;
  @override
  final Address dropoff;
  @override
  final String routingKey;

  factory _$DeliveryRequested(
          [void Function(DeliveryRequestedBuilder) updates]) =>
      (new DeliveryRequestedBuilder()..update(updates)).build();

  _$DeliveryRequested._(
      {this.orderId,
      this.courierId,
      this.pickup,
      this.dropoff,
      this.routingKey})
      : super._();

  @override
  DeliveryRequested rebuild(void Function(DeliveryRequestedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryRequestedBuilder toBuilder() =>
      new DeliveryRequestedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryRequested &&
        orderId == other.orderId &&
        courierId == other.courierId &&
        pickup == other.pickup &&
        dropoff == other.dropoff &&
        routingKey == other.routingKey;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, orderId.hashCode), courierId.hashCode),
                pickup.hashCode),
            dropoff.hashCode),
        routingKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeliveryRequested')
          ..add('orderId', orderId)
          ..add('courierId', courierId)
          ..add('pickup', pickup)
          ..add('dropoff', dropoff)
          ..add('routingKey', routingKey))
        .toString();
  }
}

class DeliveryRequestedBuilder
    implements Builder<DeliveryRequested, DeliveryRequestedBuilder> {
  _$DeliveryRequested _$v;

  String _orderId;
  String get orderId => _$this._orderId;
  set orderId(String orderId) => _$this._orderId = orderId;

  String _courierId;
  String get courierId => _$this._courierId;
  set courierId(String courierId) => _$this._courierId = courierId;

  AddressBuilder _pickup;
  AddressBuilder get pickup => _$this._pickup ??= new AddressBuilder();
  set pickup(AddressBuilder pickup) => _$this._pickup = pickup;

  AddressBuilder _dropoff;
  AddressBuilder get dropoff => _$this._dropoff ??= new AddressBuilder();
  set dropoff(AddressBuilder dropoff) => _$this._dropoff = dropoff;

  String _routingKey;
  String get routingKey => _$this._routingKey;
  set routingKey(String routingKey) => _$this._routingKey = routingKey;

  DeliveryRequestedBuilder();

  DeliveryRequestedBuilder get _$this {
    if (_$v != null) {
      _orderId = _$v.orderId;
      _courierId = _$v.courierId;
      _pickup = _$v.pickup?.toBuilder();
      _dropoff = _$v.dropoff?.toBuilder();
      _routingKey = _$v.routingKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryRequested other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DeliveryRequested;
  }

  @override
  void update(void Function(DeliveryRequestedBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeliveryRequested build() {
    _$DeliveryRequested _$result;
    try {
      _$result = _$v ??
          new _$DeliveryRequested._(
              orderId: orderId,
              courierId: courierId,
              pickup: _pickup?.build(),
              dropoff: _dropoff?.build(),
              routingKey: routingKey);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'pickup';
        _pickup?.build();
        _$failedField = 'dropoff';
        _dropoff?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DeliveryRequested', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
