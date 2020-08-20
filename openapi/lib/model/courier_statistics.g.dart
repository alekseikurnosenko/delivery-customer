// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courier_statistics.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CourierStatistics> _$courierStatisticsSerializer =
    new _$CourierStatisticsSerializer();

class _$CourierStatisticsSerializer
    implements StructuredSerializer<CourierStatistics> {
  @override
  final Iterable<Type> types = const [CourierStatistics, _$CourierStatistics];
  @override
  final String wireName = 'CourierStatistics';

  @override
  Iterable<Object> serialize(Serializers serializers, CourierStatistics object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.registered != null) {
      result
        ..add('registered')
        ..add(serializers.serialize(object.registered,
            specifiedType: const FullType(int)));
    }
    if (object.online != null) {
      result
        ..add('online')
        ..add(serializers.serialize(object.online,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  CourierStatistics deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CourierStatisticsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'registered':
          result.registered = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'online':
          result.online = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CourierStatistics extends CourierStatistics {
  @override
  final int registered;
  @override
  final int online;

  factory _$CourierStatistics(
          [void Function(CourierStatisticsBuilder) updates]) =>
      (new CourierStatisticsBuilder()..update(updates)).build();

  _$CourierStatistics._({this.registered, this.online}) : super._();

  @override
  CourierStatistics rebuild(void Function(CourierStatisticsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CourierStatisticsBuilder toBuilder() =>
      new CourierStatisticsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CourierStatistics &&
        registered == other.registered &&
        online == other.online;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, registered.hashCode), online.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CourierStatistics')
          ..add('registered', registered)
          ..add('online', online))
        .toString();
  }
}

class CourierStatisticsBuilder
    implements Builder<CourierStatistics, CourierStatisticsBuilder> {
  _$CourierStatistics _$v;

  int _registered;
  int get registered => _$this._registered;
  set registered(int registered) => _$this._registered = registered;

  int _online;
  int get online => _$this._online;
  set online(int online) => _$this._online = online;

  CourierStatisticsBuilder();

  CourierStatisticsBuilder get _$this {
    if (_$v != null) {
      _registered = _$v.registered;
      _online = _$v.online;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CourierStatistics other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CourierStatistics;
  }

  @override
  void update(void Function(CourierStatisticsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CourierStatistics build() {
    final _$result = _$v ??
        new _$CourierStatistics._(registered: registered, online: online);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
