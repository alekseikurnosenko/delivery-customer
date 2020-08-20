// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Restaurant> _$restaurantSerializer = new _$RestaurantSerializer();

class _$RestaurantSerializer implements StructuredSerializer<Restaurant> {
  @override
  final Iterable<Type> types = const [Restaurant, _$Restaurant];
  @override
  final String wireName = 'Restaurant';

  @override
  Iterable<Object> serialize(Serializers serializers, Restaurant object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.address != null) {
      result
        ..add('address')
        ..add(serializers.serialize(object.address,
            specifiedType: const FullType(Address)));
    }
    if (object.currency != null) {
      result
        ..add('currency')
        ..add(serializers.serialize(object.currency,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Restaurant deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RestaurantBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address.replace(serializers.deserialize(value,
              specifiedType: const FullType(Address)) as Address);
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Restaurant extends Restaurant {
  @override
  final String id;
  @override
  final String name;
  @override
  final Address address;
  @override
  final String currency;

  factory _$Restaurant([void Function(RestaurantBuilder) updates]) =>
      (new RestaurantBuilder()..update(updates)).build();

  _$Restaurant._({this.id, this.name, this.address, this.currency}) : super._();

  @override
  Restaurant rebuild(void Function(RestaurantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestaurantBuilder toBuilder() => new RestaurantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Restaurant &&
        id == other.id &&
        name == other.name &&
        address == other.address &&
        currency == other.currency;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), name.hashCode), address.hashCode),
        currency.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Restaurant')
          ..add('id', id)
          ..add('name', name)
          ..add('address', address)
          ..add('currency', currency))
        .toString();
  }
}

class RestaurantBuilder implements Builder<Restaurant, RestaurantBuilder> {
  _$Restaurant _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  AddressBuilder _address;
  AddressBuilder get address => _$this._address ??= new AddressBuilder();
  set address(AddressBuilder address) => _$this._address = address;

  String _currency;
  String get currency => _$this._currency;
  set currency(String currency) => _$this._currency = currency;

  RestaurantBuilder();

  RestaurantBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _address = _$v.address?.toBuilder();
      _currency = _$v.currency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Restaurant other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Restaurant;
  }

  @override
  void update(void Function(RestaurantBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Restaurant build() {
    _$Restaurant _$result;
    try {
      _$result = _$v ??
          new _$Restaurant._(
              id: id,
              name: name,
              address: _address?.build(),
              currency: currency);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Restaurant', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
