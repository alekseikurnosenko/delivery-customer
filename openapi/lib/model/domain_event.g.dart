// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DomainEvent> _$domainEventSerializer = new _$DomainEventSerializer();

class _$DomainEventSerializer implements StructuredSerializer<DomainEvent> {
  @override
  final Iterable<Type> types = const [DomainEvent, _$DomainEvent];
  @override
  final String wireName = 'DomainEvent';

  @override
  Iterable<Object> serialize(Serializers serializers, DomainEvent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.routingKey != null) {
      result
        ..add('routingKey')
        ..add(serializers.serialize(object.routingKey,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  DomainEvent deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DomainEventBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'routingKey':
          result.routingKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DomainEvent extends DomainEvent {
  @override
  final String routingKey;

  factory _$DomainEvent([void Function(DomainEventBuilder) updates]) =>
      (new DomainEventBuilder()..update(updates)).build();

  _$DomainEvent._({this.routingKey}) : super._();

  @override
  DomainEvent rebuild(void Function(DomainEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DomainEventBuilder toBuilder() => new DomainEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DomainEvent && routingKey == other.routingKey;
  }

  @override
  int get hashCode {
    return $jf($jc(0, routingKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DomainEvent')
          ..add('routingKey', routingKey))
        .toString();
  }
}

class DomainEventBuilder implements Builder<DomainEvent, DomainEventBuilder> {
  _$DomainEvent _$v;

  String _routingKey;
  String get routingKey => _$this._routingKey;
  set routingKey(String routingKey) => _$this._routingKey = routingKey;

  DomainEventBuilder();

  DomainEventBuilder get _$this {
    if (_$v != null) {
      _routingKey = _$v.routingKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DomainEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DomainEvent;
  }

  @override
  void update(void Function(DomainEventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DomainEvent build() {
    final _$result = _$v ?? new _$DomainEvent._(routingKey: routingKey);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
