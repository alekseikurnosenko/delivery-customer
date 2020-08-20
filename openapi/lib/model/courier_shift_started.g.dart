// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courier_shift_started.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CourierShiftStarted> _$courierShiftStartedSerializer =
    new _$CourierShiftStartedSerializer();

class _$CourierShiftStartedSerializer
    implements StructuredSerializer<CourierShiftStarted> {
  @override
  final Iterable<Type> types = const [
    CourierShiftStarted,
    _$CourierShiftStarted
  ];
  @override
  final String wireName = 'CourierShiftStarted';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CourierShiftStarted object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.courierId != null) {
      result
        ..add('courierId')
        ..add(serializers.serialize(object.courierId,
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
  CourierShiftStarted deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CourierShiftStartedBuilder();

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
        case 'routingKey':
          result.routingKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CourierShiftStarted extends CourierShiftStarted {
  @override
  final String courierId;
  @override
  final String routingKey;

  factory _$CourierShiftStarted(
          [void Function(CourierShiftStartedBuilder) updates]) =>
      (new CourierShiftStartedBuilder()..update(updates)).build();

  _$CourierShiftStarted._({this.courierId, this.routingKey}) : super._();

  @override
  CourierShiftStarted rebuild(
          void Function(CourierShiftStartedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CourierShiftStartedBuilder toBuilder() =>
      new CourierShiftStartedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CourierShiftStarted &&
        courierId == other.courierId &&
        routingKey == other.routingKey;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, courierId.hashCode), routingKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CourierShiftStarted')
          ..add('courierId', courierId)
          ..add('routingKey', routingKey))
        .toString();
  }
}

class CourierShiftStartedBuilder
    implements Builder<CourierShiftStarted, CourierShiftStartedBuilder> {
  _$CourierShiftStarted _$v;

  String _courierId;
  String get courierId => _$this._courierId;
  set courierId(String courierId) => _$this._courierId = courierId;

  String _routingKey;
  String get routingKey => _$this._routingKey;
  set routingKey(String routingKey) => _$this._routingKey = routingKey;

  CourierShiftStartedBuilder();

  CourierShiftStartedBuilder get _$this {
    if (_$v != null) {
      _courierId = _$v.courierId;
      _routingKey = _$v.routingKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CourierShiftStarted other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CourierShiftStarted;
  }

  @override
  void update(void Function(CourierShiftStartedBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CourierShiftStarted build() {
    final _$result = _$v ??
        new _$CourierShiftStarted._(
            courierId: courierId, routingKey: routingKey);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
