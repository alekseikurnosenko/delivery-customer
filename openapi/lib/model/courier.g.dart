// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courier.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Courier> _$courierSerializer = new _$CourierSerializer();

class _$CourierSerializer implements StructuredSerializer<Courier> {
  @override
  final Iterable<Type> types = const [Courier, _$Courier];
  @override
  final String wireName = 'Courier';

  @override
  Iterable<Object> serialize(Serializers serializers, Courier object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.fullName != null) {
      result
        ..add('fullName')
        ..add(serializers.serialize(object.fullName,
            specifiedType: const FullType(String)));
    }
    if (object.onShift != null) {
      result
        ..add('onShift')
        ..add(serializers.serialize(object.onShift,
            specifiedType: const FullType(bool)));
    }
    if (object.location != null) {
      result
        ..add('location')
        ..add(serializers.serialize(object.location,
            specifiedType: const FullType(LatLng)));
    }
    if (object.activeOrders != null) {
      result
        ..add('activeOrders')
        ..add(serializers.serialize(object.activeOrders,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Order)])));
    }
    return result;
  }

  @override
  Courier deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CourierBuilder();

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
        case 'fullName':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'onShift':
          result.onShift = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'location':
          result.location.replace(serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng);
          break;
        case 'activeOrders':
          result.activeOrders.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Order)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Courier extends Courier {
  @override
  final String id;
  @override
  final String fullName;
  @override
  final bool onShift;
  @override
  final LatLng location;
  @override
  final BuiltList<Order> activeOrders;

  factory _$Courier([void Function(CourierBuilder) updates]) =>
      (new CourierBuilder()..update(updates)).build();

  _$Courier._(
      {this.id, this.fullName, this.onShift, this.location, this.activeOrders})
      : super._();

  @override
  Courier rebuild(void Function(CourierBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CourierBuilder toBuilder() => new CourierBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Courier &&
        id == other.id &&
        fullName == other.fullName &&
        onShift == other.onShift &&
        location == other.location &&
        activeOrders == other.activeOrders;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), fullName.hashCode), onShift.hashCode),
            location.hashCode),
        activeOrders.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Courier')
          ..add('id', id)
          ..add('fullName', fullName)
          ..add('onShift', onShift)
          ..add('location', location)
          ..add('activeOrders', activeOrders))
        .toString();
  }
}

class CourierBuilder implements Builder<Courier, CourierBuilder> {
  _$Courier _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _fullName;
  String get fullName => _$this._fullName;
  set fullName(String fullName) => _$this._fullName = fullName;

  bool _onShift;
  bool get onShift => _$this._onShift;
  set onShift(bool onShift) => _$this._onShift = onShift;

  LatLngBuilder _location;
  LatLngBuilder get location => _$this._location ??= new LatLngBuilder();
  set location(LatLngBuilder location) => _$this._location = location;

  ListBuilder<Order> _activeOrders;
  ListBuilder<Order> get activeOrders =>
      _$this._activeOrders ??= new ListBuilder<Order>();
  set activeOrders(ListBuilder<Order> activeOrders) =>
      _$this._activeOrders = activeOrders;

  CourierBuilder();

  CourierBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _fullName = _$v.fullName;
      _onShift = _$v.onShift;
      _location = _$v.location?.toBuilder();
      _activeOrders = _$v.activeOrders?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Courier other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Courier;
  }

  @override
  void update(void Function(CourierBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Courier build() {
    _$Courier _$result;
    try {
      _$result = _$v ??
          new _$Courier._(
              id: id,
              fullName: fullName,
              onShift: onShift,
              location: _location?.build(),
              activeOrders: _activeOrders?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'location';
        _location?.build();
        _$failedField = 'activeOrders';
        _activeOrders?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Courier', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
