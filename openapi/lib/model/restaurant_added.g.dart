// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_added.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RestaurantAdded> _$restaurantAddedSerializer =
    new _$RestaurantAddedSerializer();

class _$RestaurantAddedSerializer
    implements StructuredSerializer<RestaurantAdded> {
  @override
  final Iterable<Type> types = const [RestaurantAdded, _$RestaurantAdded];
  @override
  final String wireName = 'RestaurantAdded';

  @override
  Iterable<Object> serialize(Serializers serializers, RestaurantAdded object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.accountId != null) {
      result
        ..add('accountId')
        ..add(serializers.serialize(object.accountId,
            specifiedType: const FullType(String)));
    }
    if (object.restaurantId != null) {
      result
        ..add('restaurantId')
        ..add(serializers.serialize(object.restaurantId,
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
  RestaurantAdded deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RestaurantAddedBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'accountId':
          result.accountId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'restaurantId':
          result.restaurantId = serializers.deserialize(value,
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

class _$RestaurantAdded extends RestaurantAdded {
  @override
  final String accountId;
  @override
  final String restaurantId;
  @override
  final String routingKey;

  factory _$RestaurantAdded([void Function(RestaurantAddedBuilder) updates]) =>
      (new RestaurantAddedBuilder()..update(updates)).build();

  _$RestaurantAdded._({this.accountId, this.restaurantId, this.routingKey})
      : super._();

  @override
  RestaurantAdded rebuild(void Function(RestaurantAddedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestaurantAddedBuilder toBuilder() =>
      new RestaurantAddedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantAdded &&
        accountId == other.accountId &&
        restaurantId == other.restaurantId &&
        routingKey == other.routingKey;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, accountId.hashCode), restaurantId.hashCode),
        routingKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RestaurantAdded')
          ..add('accountId', accountId)
          ..add('restaurantId', restaurantId)
          ..add('routingKey', routingKey))
        .toString();
  }
}

class RestaurantAddedBuilder
    implements Builder<RestaurantAdded, RestaurantAddedBuilder> {
  _$RestaurantAdded _$v;

  String _accountId;
  String get accountId => _$this._accountId;
  set accountId(String accountId) => _$this._accountId = accountId;

  String _restaurantId;
  String get restaurantId => _$this._restaurantId;
  set restaurantId(String restaurantId) => _$this._restaurantId = restaurantId;

  String _routingKey;
  String get routingKey => _$this._routingKey;
  set routingKey(String routingKey) => _$this._routingKey = routingKey;

  RestaurantAddedBuilder();

  RestaurantAddedBuilder get _$this {
    if (_$v != null) {
      _accountId = _$v.accountId;
      _restaurantId = _$v.restaurantId;
      _routingKey = _$v.routingKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantAdded other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RestaurantAdded;
  }

  @override
  void update(void Function(RestaurantAddedBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RestaurantAdded build() {
    final _$result = _$v ??
        new _$RestaurantAdded._(
            accountId: accountId,
            restaurantId: restaurantId,
            routingKey: routingKey);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
