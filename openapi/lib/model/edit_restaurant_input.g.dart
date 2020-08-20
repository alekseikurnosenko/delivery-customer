// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_restaurant_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EditRestaurantInput> _$editRestaurantInputSerializer =
    new _$EditRestaurantInputSerializer();

class _$EditRestaurantInputSerializer
    implements StructuredSerializer<EditRestaurantInput> {
  @override
  final Iterable<Type> types = const [
    EditRestaurantInput,
    _$EditRestaurantInput
  ];
  @override
  final String wireName = 'EditRestaurantInput';

  @override
  Iterable<Object> serialize(
      Serializers serializers, EditRestaurantInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.imageUrl != null) {
      result
        ..add('imageUrl')
        ..add(serializers.serialize(object.imageUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  EditRestaurantInput deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EditRestaurantInputBuilder();

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
        case 'address':
          result.address.replace(serializers.deserialize(value,
              specifiedType: const FullType(Address)) as Address);
          break;
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$EditRestaurantInput extends EditRestaurantInput {
  @override
  final String name;
  @override
  final Address address;
  @override
  final String imageUrl;

  factory _$EditRestaurantInput(
          [void Function(EditRestaurantInputBuilder) updates]) =>
      (new EditRestaurantInputBuilder()..update(updates)).build();

  _$EditRestaurantInput._({this.name, this.address, this.imageUrl}) : super._();

  @override
  EditRestaurantInput rebuild(
          void Function(EditRestaurantInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EditRestaurantInputBuilder toBuilder() =>
      new EditRestaurantInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EditRestaurantInput &&
        name == other.name &&
        address == other.address &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), address.hashCode), imageUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EditRestaurantInput')
          ..add('name', name)
          ..add('address', address)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class EditRestaurantInputBuilder
    implements Builder<EditRestaurantInput, EditRestaurantInputBuilder> {
  _$EditRestaurantInput _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  AddressBuilder _address;
  AddressBuilder get address => _$this._address ??= new AddressBuilder();
  set address(AddressBuilder address) => _$this._address = address;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  EditRestaurantInputBuilder();

  EditRestaurantInputBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _address = _$v.address?.toBuilder();
      _imageUrl = _$v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EditRestaurantInput other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$EditRestaurantInput;
  }

  @override
  void update(void Function(EditRestaurantInputBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EditRestaurantInput build() {
    _$EditRestaurantInput _$result;
    try {
      _$result = _$v ??
          new _$EditRestaurantInput._(
              name: name, address: _address?.build(), imageUrl: imageUrl);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'EditRestaurantInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
