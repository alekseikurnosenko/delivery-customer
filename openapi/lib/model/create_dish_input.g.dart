// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_dish_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CreateDishInput> _$createDishInputSerializer =
    new _$CreateDishInputSerializer();

class _$CreateDishInputSerializer
    implements StructuredSerializer<CreateDishInput> {
  @override
  final Iterable<Type> types = const [CreateDishInput, _$CreateDishInput];
  @override
  final String wireName = 'CreateDishInput';

  @override
  Iterable<Object> serialize(Serializers serializers, CreateDishInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.price != null) {
      result
        ..add('price')
        ..add(serializers.serialize(object.price,
            specifiedType: const FullType(double)));
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
  CreateDishInput deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreateDishInputBuilder();

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
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
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

class _$CreateDishInput extends CreateDishInput {
  @override
  final String name;
  @override
  final double price;
  @override
  final String imageUrl;

  factory _$CreateDishInput([void Function(CreateDishInputBuilder) updates]) =>
      (new CreateDishInputBuilder()..update(updates)).build();

  _$CreateDishInput._({this.name, this.price, this.imageUrl}) : super._();

  @override
  CreateDishInput rebuild(void Function(CreateDishInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateDishInputBuilder toBuilder() =>
      new CreateDishInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateDishInput &&
        name == other.name &&
        price == other.price &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), price.hashCode), imageUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateDishInput')
          ..add('name', name)
          ..add('price', price)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class CreateDishInputBuilder
    implements Builder<CreateDishInput, CreateDishInputBuilder> {
  _$CreateDishInput _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  double _price;
  double get price => _$this._price;
  set price(double price) => _$this._price = price;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  CreateDishInputBuilder();

  CreateDishInputBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _price = _$v.price;
      _imageUrl = _$v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateDishInput other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreateDishInput;
  }

  @override
  void update(void Function(CreateDishInputBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateDishInput build() {
    final _$result = _$v ??
        new _$CreateDishInput._(name: name, price: price, imageUrl: imageUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
