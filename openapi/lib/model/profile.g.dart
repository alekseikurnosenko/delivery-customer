// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Profile> _$profileSerializer = new _$ProfileSerializer();

class _$ProfileSerializer implements StructuredSerializer<Profile> {
  @override
  final Iterable<Type> types = const [Profile, _$Profile];
  @override
  final String wireName = 'Profile';

  @override
  Iterable<Object> serialize(Serializers serializers, Profile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.userId != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(object.userId,
            specifiedType: const FullType(String)));
    }
    if (object.deliveryAddress != null) {
      result
        ..add('deliveryAddress')
        ..add(serializers.serialize(object.deliveryAddress,
            specifiedType: const FullType(Address)));
    }
    if (object.paymentMethodId != null) {
      result
        ..add('paymentMethodId')
        ..add(serializers.serialize(object.paymentMethodId,
            specifiedType: const FullType(String)));
    }
    if (object.events != null) {
      result
        ..add('events')
        ..add(serializers.serialize(object.events,
            specifiedType: const FullType(
                BuiltList, const [const FullType(DomainEvent)])));
    }
    if (object.deleted != null) {
      result
        ..add('deleted')
        ..add(serializers.serialize(object.deleted,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  Profile deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProfileBuilder();

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
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'deliveryAddress':
          result.deliveryAddress.replace(serializers.deserialize(value,
              specifiedType: const FullType(Address)) as Address);
          break;
        case 'paymentMethodId':
          result.paymentMethodId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'events':
          result.events.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(DomainEvent)]))
              as BuiltList<Object>);
          break;
        case 'deleted':
          result.deleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Profile extends Profile {
  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final String userId;
  @override
  final Address deliveryAddress;
  @override
  final String paymentMethodId;
  @override
  final BuiltList<DomainEvent> events;
  @override
  final bool deleted;

  factory _$Profile([void Function(ProfileBuilder) updates]) =>
      (new ProfileBuilder()..update(updates)).build();

  _$Profile._(
      {this.id,
      this.createdAt,
      this.userId,
      this.deliveryAddress,
      this.paymentMethodId,
      this.events,
      this.deleted})
      : super._();

  @override
  Profile rebuild(void Function(ProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfileBuilder toBuilder() => new ProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Profile &&
        id == other.id &&
        createdAt == other.createdAt &&
        userId == other.userId &&
        deliveryAddress == other.deliveryAddress &&
        paymentMethodId == other.paymentMethodId &&
        events == other.events &&
        deleted == other.deleted;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), createdAt.hashCode),
                        userId.hashCode),
                    deliveryAddress.hashCode),
                paymentMethodId.hashCode),
            events.hashCode),
        deleted.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Profile')
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('userId', userId)
          ..add('deliveryAddress', deliveryAddress)
          ..add('paymentMethodId', paymentMethodId)
          ..add('events', events)
          ..add('deleted', deleted))
        .toString();
  }
}

class ProfileBuilder implements Builder<Profile, ProfileBuilder> {
  _$Profile _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  String _userId;
  String get userId => _$this._userId;
  set userId(String userId) => _$this._userId = userId;

  AddressBuilder _deliveryAddress;
  AddressBuilder get deliveryAddress =>
      _$this._deliveryAddress ??= new AddressBuilder();
  set deliveryAddress(AddressBuilder deliveryAddress) =>
      _$this._deliveryAddress = deliveryAddress;

  String _paymentMethodId;
  String get paymentMethodId => _$this._paymentMethodId;
  set paymentMethodId(String paymentMethodId) =>
      _$this._paymentMethodId = paymentMethodId;

  ListBuilder<DomainEvent> _events;
  ListBuilder<DomainEvent> get events =>
      _$this._events ??= new ListBuilder<DomainEvent>();
  set events(ListBuilder<DomainEvent> events) => _$this._events = events;

  bool _deleted;
  bool get deleted => _$this._deleted;
  set deleted(bool deleted) => _$this._deleted = deleted;

  ProfileBuilder();

  ProfileBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _createdAt = _$v.createdAt;
      _userId = _$v.userId;
      _deliveryAddress = _$v.deliveryAddress?.toBuilder();
      _paymentMethodId = _$v.paymentMethodId;
      _events = _$v.events?.toBuilder();
      _deleted = _$v.deleted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Profile other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Profile;
  }

  @override
  void update(void Function(ProfileBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Profile build() {
    _$Profile _$result;
    try {
      _$result = _$v ??
          new _$Profile._(
              id: id,
              createdAt: createdAt,
              userId: userId,
              deliveryAddress: _deliveryAddress?.build(),
              paymentMethodId: paymentMethodId,
              events: _events?.build(),
              deleted: deleted);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'deliveryAddress';
        _deliveryAddress?.build();

        _$failedField = 'events';
        _events?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Profile', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
