// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_request_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DeliveryRequestDTO> _$deliveryRequestDTOSerializer =
    new _$DeliveryRequestDTOSerializer();

class _$DeliveryRequestDTOSerializer
    implements StructuredSerializer<DeliveryRequestDTO> {
  @override
  final Iterable<Type> types = const [DeliveryRequestDTO, _$DeliveryRequestDTO];
  @override
  final String wireName = 'DeliveryRequestDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, DeliveryRequestDTO object,
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
    return result;
  }

  @override
  DeliveryRequestDTO deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DeliveryRequestDTOBuilder();

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
      }
    }

    return result.build();
  }
}

class _$DeliveryRequestDTO extends DeliveryRequestDTO {
  @override
  final String orderId;
  @override
  final String courierId;
  @override
  final Address pickup;
  @override
  final Address dropoff;

  factory _$DeliveryRequestDTO(
          [void Function(DeliveryRequestDTOBuilder) updates]) =>
      (new DeliveryRequestDTOBuilder()..update(updates)).build();

  _$DeliveryRequestDTO._(
      {this.orderId, this.courierId, this.pickup, this.dropoff})
      : super._();

  @override
  DeliveryRequestDTO rebuild(
          void Function(DeliveryRequestDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryRequestDTOBuilder toBuilder() =>
      new DeliveryRequestDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryRequestDTO &&
        orderId == other.orderId &&
        courierId == other.courierId &&
        pickup == other.pickup &&
        dropoff == other.dropoff;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, orderId.hashCode), courierId.hashCode), pickup.hashCode),
        dropoff.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeliveryRequestDTO')
          ..add('orderId', orderId)
          ..add('courierId', courierId)
          ..add('pickup', pickup)
          ..add('dropoff', dropoff))
        .toString();
  }
}

class DeliveryRequestDTOBuilder
    implements Builder<DeliveryRequestDTO, DeliveryRequestDTOBuilder> {
  _$DeliveryRequestDTO _$v;

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

  DeliveryRequestDTOBuilder();

  DeliveryRequestDTOBuilder get _$this {
    if (_$v != null) {
      _orderId = _$v.orderId;
      _courierId = _$v.courierId;
      _pickup = _$v.pickup?.toBuilder();
      _dropoff = _$v.dropoff?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryRequestDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DeliveryRequestDTO;
  }

  @override
  void update(void Function(DeliveryRequestDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeliveryRequestDTO build() {
    _$DeliveryRequestDTO _$result;
    try {
      _$result = _$v ??
          new _$DeliveryRequestDTO._(
              orderId: orderId,
              courierId: courierId,
              pickup: _pickup?.build(),
              dropoff: _dropoff?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'pickup';
        _pickup?.build();
        _$failedField = 'dropoff';
        _dropoff?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DeliveryRequestDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
