// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courier_location_updated.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CourierLocationUpdated> _$courierLocationUpdatedSerializer =
    new _$CourierLocationUpdatedSerializer();

class _$CourierLocationUpdatedSerializer
    implements StructuredSerializer<CourierLocationUpdated> {
  @override
  final Iterable<Type> types = const [
    CourierLocationUpdated,
    _$CourierLocationUpdated
  ];
  @override
  final String wireName = 'CourierLocationUpdated';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CourierLocationUpdated object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.courierId != null) {
      result
        ..add('courierId')
        ..add(serializers.serialize(object.courierId,
            specifiedType: const FullType(String)));
    }
    if (object.location != null) {
      result
        ..add('location')
        ..add(serializers.serialize(object.location,
            specifiedType: const FullType(LatLng)));
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
  CourierLocationUpdated deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CourierLocationUpdatedBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'courierId':
          result.courierId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location.replace(serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng);
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

class _$CourierLocationUpdated extends CourierLocationUpdated {
  @override
  final String courierId;
  @override
  final LatLng location;
  @override
  final String routingKey;

  factory _$CourierLocationUpdated(
          [void Function(CourierLocationUpdatedBuilder) updates]) =>
      (new CourierLocationUpdatedBuilder()..update(updates)).build();

  _$CourierLocationUpdated._({this.courierId, this.location, this.routingKey})
      : super._();

  @override
  CourierLocationUpdated rebuild(
          void Function(CourierLocationUpdatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CourierLocationUpdatedBuilder toBuilder() =>
      new CourierLocationUpdatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CourierLocationUpdated &&
        courierId == other.courierId &&
        location == other.location &&
        routingKey == other.routingKey;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, courierId.hashCode), location.hashCode),
        routingKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CourierLocationUpdated')
          ..add('courierId', courierId)
          ..add('location', location)
          ..add('routingKey', routingKey))
        .toString();
  }
}

class CourierLocationUpdatedBuilder
    implements Builder<CourierLocationUpdated, CourierLocationUpdatedBuilder> {
  _$CourierLocationUpdated _$v;

  String _courierId;
  String get courierId => _$this._courierId;
  set courierId(String courierId) => _$this._courierId = courierId;

  LatLngBuilder _location;
  LatLngBuilder get location => _$this._location ??= new LatLngBuilder();
  set location(LatLngBuilder location) => _$this._location = location;

  String _routingKey;
  String get routingKey => _$this._routingKey;
  set routingKey(String routingKey) => _$this._routingKey = routingKey;

  CourierLocationUpdatedBuilder();

  CourierLocationUpdatedBuilder get _$this {
    if (_$v != null) {
      _courierId = _$v.courierId;
      _location = _$v.location?.toBuilder();
      _routingKey = _$v.routingKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CourierLocationUpdated other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CourierLocationUpdated;
  }

  @override
  void update(void Function(CourierLocationUpdatedBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CourierLocationUpdated build() {
    _$CourierLocationUpdated _$result;
    try {
      _$result = _$v ??
          new _$CourierLocationUpdated._(
              courierId: courierId,
              location: _location?.build(),
              routingKey: routingKey);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'location';
        _location?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CourierLocationUpdated', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
