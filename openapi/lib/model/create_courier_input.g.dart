// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_courier_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CreateCourierInput> _$createCourierInputSerializer =
    new _$CreateCourierInputSerializer();

class _$CreateCourierInputSerializer
    implements StructuredSerializer<CreateCourierInput> {
  @override
  final Iterable<Type> types = const [CreateCourierInput, _$CreateCourierInput];
  @override
  final String wireName = 'CreateCourierInput';

  @override
  Iterable<Object> serialize(Serializers serializers, CreateCourierInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CreateCourierInput deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreateCourierInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CreateCourierInput extends CreateCourierInput {
  @override
  final String name;

  factory _$CreateCourierInput(
          [void Function(CreateCourierInputBuilder) updates]) =>
      (new CreateCourierInputBuilder()..update(updates)).build();

  _$CreateCourierInput._({this.name}) : super._();

  @override
  CreateCourierInput rebuild(
          void Function(CreateCourierInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCourierInputBuilder toBuilder() =>
      new CreateCourierInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCourierInput && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(0, name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateCourierInput')
          ..add('name', name))
        .toString();
  }
}

class CreateCourierInputBuilder
    implements Builder<CreateCourierInput, CreateCourierInputBuilder> {
  _$CreateCourierInput _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  CreateCourierInputBuilder();

  CreateCourierInputBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateCourierInput other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreateCourierInput;
  }

  @override
  void update(void Function(CreateCourierInputBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateCourierInput build() {
    final _$result = _$v ?? new _$CreateCourierInput._(name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
