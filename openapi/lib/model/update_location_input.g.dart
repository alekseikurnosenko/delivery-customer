// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_location_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UpdateLocationInput> _$updateLocationInputSerializer =
    new _$UpdateLocationInputSerializer();

class _$UpdateLocationInputSerializer
    implements StructuredSerializer<UpdateLocationInput> {
  @override
  final Iterable<Type> types = const [
    UpdateLocationInput,
    _$UpdateLocationInput
  ];
  @override
  final String wireName = 'UpdateLocationInput';

  @override
  Iterable<Object> serialize(
      Serializers serializers, UpdateLocationInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.latLng != null) {
      result
        ..add('latLng')
        ..add(serializers.serialize(object.latLng,
            specifiedType: const FullType(LatLng)));
    }
    return result;
  }

  @override
  UpdateLocationInput deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UpdateLocationInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'latLng':
          result.latLng.replace(serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng);
          break;
      }
    }

    return result.build();
  }
}

class _$UpdateLocationInput extends UpdateLocationInput {
  @override
  final LatLng latLng;

  factory _$UpdateLocationInput(
          [void Function(UpdateLocationInputBuilder) updates]) =>
      (new UpdateLocationInputBuilder()..update(updates)).build();

  _$UpdateLocationInput._({this.latLng}) : super._();

  @override
  UpdateLocationInput rebuild(
          void Function(UpdateLocationInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateLocationInputBuilder toBuilder() =>
      new UpdateLocationInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateLocationInput && latLng == other.latLng;
  }

  @override
  int get hashCode {
    return $jf($jc(0, latLng.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UpdateLocationInput')
          ..add('latLng', latLng))
        .toString();
  }
}

class UpdateLocationInputBuilder
    implements Builder<UpdateLocationInput, UpdateLocationInputBuilder> {
  _$UpdateLocationInput _$v;

  LatLngBuilder _latLng;
  LatLngBuilder get latLng => _$this._latLng ??= new LatLngBuilder();
  set latLng(LatLngBuilder latLng) => _$this._latLng = latLng;

  UpdateLocationInputBuilder();

  UpdateLocationInputBuilder get _$this {
    if (_$v != null) {
      _latLng = _$v.latLng?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateLocationInput other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UpdateLocationInput;
  }

  @override
  void update(void Function(UpdateLocationInputBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpdateLocationInput build() {
    _$UpdateLocationInput _$result;
    try {
      _$result = _$v ?? new _$UpdateLocationInput._(latLng: _latLng?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'latLng';
        _latLng?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UpdateLocationInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
