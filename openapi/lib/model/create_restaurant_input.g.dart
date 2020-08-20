// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_restaurant_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CreateRestaurantInput> _$createRestaurantInputSerializer =
    new _$CreateRestaurantInputSerializer();

class _$CreateRestaurantInputSerializer
    implements StructuredSerializer<CreateRestaurantInput> {
  @override
  final Iterable<Type> types = const [
    CreateRestaurantInput,
    _$CreateRestaurantInput
  ];
  @override
  final String wireName = 'CreateRestaurantInput';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CreateRestaurantInput object,
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
    if (object.currency != null) {
      result
        ..add('currency')
        ..add(serializers.serialize(object.currency,
            specifiedType: const FullType(String)));
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
  CreateRestaurantInput deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreateRestaurantInputBuilder();

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
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$CreateRestaurantInput extends CreateRestaurantInput {
  @override
  final String name;
  @override
  final Address address;
  @override
  final String currency;
  @override
  final String imageUrl;

  factory _$CreateRestaurantInput(
          [void Function(CreateRestaurantInputBuilder) updates]) =>
      (new CreateRestaurantInputBuilder()..update(updates)).build();

  _$CreateRestaurantInput._(
      {this.name, this.address, this.currency, this.imageUrl})
      : super._();

  @override
  CreateRestaurantInput rebuild(
          void Function(CreateRestaurantInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateRestaurantInputBuilder toBuilder() =>
      new CreateRestaurantInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateRestaurantInput &&
        name == other.name &&
        address == other.address &&
        currency == other.currency &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), address.hashCode), currency.hashCode),
        imageUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateRestaurantInput')
          ..add('name', name)
          ..add('address', address)
          ..add('currency', currency)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class CreateRestaurantInputBuilder
    implements Builder<CreateRestaurantInput, CreateRestaurantInputBuilder> {
  _$CreateRestaurantInput _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  AddressBuilder _address;
  AddressBuilder get address => _$this._address ??= new AddressBuilder();
  set address(AddressBuilder address) => _$this._address = address;

  String _currency;
  String get currency => _$this._currency;
  set currency(String currency) => _$this._currency = currency;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  CreateRestaurantInputBuilder();

  CreateRestaurantInputBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _address = _$v.address?.toBuilder();
      _currency = _$v.currency;
      _imageUrl = _$v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateRestaurantInput other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreateRestaurantInput;
  }

  @override
  void update(void Function(CreateRestaurantInputBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateRestaurantInput build() {
    _$CreateRestaurantInput _$result;
    try {
      _$result = _$v ??
          new _$CreateRestaurantInput._(
              name: name,
              address: _address?.build(),
              currency: currency,
              imageUrl: imageUrl);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CreateRestaurantInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
