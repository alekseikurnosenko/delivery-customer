// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courier_added.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CourierAdded> _$courierAddedSerializer =
    new _$CourierAddedSerializer();

class _$CourierAddedSerializer implements StructuredSerializer<CourierAdded> {
  @override
  final Iterable<Type> types = const [CourierAdded, _$CourierAdded];
  @override
  final String wireName = 'CourierAdded';

  @override
  Iterable<Object> serialize(Serializers serializers, CourierAdded object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.accountId != null) {
      result
        ..add('accountId')
        ..add(serializers.serialize(object.accountId,
            specifiedType: const FullType(String)));
    }
    if (object.courierId != null) {
      result
        ..add('courierId')
        ..add(serializers.serialize(object.courierId,
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
    if (object.routingKey != null) {
      result
        ..add('routingKey')
        ..add(serializers.serialize(object.routingKey,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CourierAdded deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CourierAddedBuilder();

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
        case 'courierId':
          result.courierId = serializers.deserialize(value,
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
        case 'routingKey':
          result.routingKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CourierAdded extends CourierAdded {
  @override
  final String accountId;
  @override
  final String courierId;
  @override
  final String fullName;
  @override
  final bool onShift;
  @override
  final String routingKey;

  factory _$CourierAdded([void Function(CourierAddedBuilder) updates]) =>
      (new CourierAddedBuilder()..update(updates)).build();

  _$CourierAdded._(
      {this.accountId,
      this.courierId,
      this.fullName,
      this.onShift,
      this.routingKey})
      : super._();

  @override
  CourierAdded rebuild(void Function(CourierAddedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CourierAddedBuilder toBuilder() => new CourierAddedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CourierAdded &&
        accountId == other.accountId &&
        courierId == other.courierId &&
        fullName == other.fullName &&
        onShift == other.onShift &&
        routingKey == other.routingKey;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, accountId.hashCode), courierId.hashCode),
                fullName.hashCode),
            onShift.hashCode),
        routingKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CourierAdded')
          ..add('accountId', accountId)
          ..add('courierId', courierId)
          ..add('fullName', fullName)
          ..add('onShift', onShift)
          ..add('routingKey', routingKey))
        .toString();
  }
}

class CourierAddedBuilder
    implements Builder<CourierAdded, CourierAddedBuilder> {
  _$CourierAdded _$v;

  String _accountId;
  String get accountId => _$this._accountId;
  set accountId(String accountId) => _$this._accountId = accountId;

  String _courierId;
  String get courierId => _$this._courierId;
  set courierId(String courierId) => _$this._courierId = courierId;

  String _fullName;
  String get fullName => _$this._fullName;
  set fullName(String fullName) => _$this._fullName = fullName;

  bool _onShift;
  bool get onShift => _$this._onShift;
  set onShift(bool onShift) => _$this._onShift = onShift;

  String _routingKey;
  String get routingKey => _$this._routingKey;
  set routingKey(String routingKey) => _$this._routingKey = routingKey;

  CourierAddedBuilder();

  CourierAddedBuilder get _$this {
    if (_$v != null) {
      _accountId = _$v.accountId;
      _courierId = _$v.courierId;
      _fullName = _$v.fullName;
      _onShift = _$v.onShift;
      _routingKey = _$v.routingKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CourierAdded other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CourierAdded;
  }

  @override
  void update(void Function(CourierAddedBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CourierAdded build() {
    final _$result = _$v ??
        new _$CourierAdded._(
            accountId: accountId,
            courierId: courierId,
            fullName: fullName,
            onShift: onShift,
            routingKey: routingKey);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
