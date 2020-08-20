// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrderItemDTO> _$orderItemDTOSerializer =
    new _$OrderItemDTOSerializer();

class _$OrderItemDTOSerializer implements StructuredSerializer<OrderItemDTO> {
  @override
  final Iterable<Type> types = const [OrderItemDTO, _$OrderItemDTO];
  @override
  final String wireName = 'OrderItemDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, OrderItemDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.dish != null) {
      result
        ..add('dish')
        ..add(serializers.serialize(object.dish,
            specifiedType: const FullType(Dish)));
    }
    if (object.quantity != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(object.quantity,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  OrderItemDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderItemDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'dish':
          result.dish.replace(serializers.deserialize(value,
              specifiedType: const FullType(Dish)) as Dish);
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$OrderItemDTO extends OrderItemDTO {
  @override
  final Dish dish;
  @override
  final int quantity;

  factory _$OrderItemDTO([void Function(OrderItemDTOBuilder) updates]) =>
      (new OrderItemDTOBuilder()..update(updates)).build();

  _$OrderItemDTO._({this.dish, this.quantity}) : super._();

  @override
  OrderItemDTO rebuild(void Function(OrderItemDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderItemDTOBuilder toBuilder() => new OrderItemDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderItemDTO &&
        dish == other.dish &&
        quantity == other.quantity;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, dish.hashCode), quantity.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderItemDTO')
          ..add('dish', dish)
          ..add('quantity', quantity))
        .toString();
  }
}

class OrderItemDTOBuilder
    implements Builder<OrderItemDTO, OrderItemDTOBuilder> {
  _$OrderItemDTO _$v;

  DishBuilder _dish;
  DishBuilder get dish => _$this._dish ??= new DishBuilder();
  set dish(DishBuilder dish) => _$this._dish = dish;

  int _quantity;
  int get quantity => _$this._quantity;
  set quantity(int quantity) => _$this._quantity = quantity;

  OrderItemDTOBuilder();

  OrderItemDTOBuilder get _$this {
    if (_$v != null) {
      _dish = _$v.dish?.toBuilder();
      _quantity = _$v.quantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderItemDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrderItemDTO;
  }

  @override
  void update(void Function(OrderItemDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrderItemDTO build() {
    _$OrderItemDTO _$result;
    try {
      _$result =
          _$v ?? new _$OrderItemDTO._(dish: _dish?.build(), quantity: quantity);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'dish';
        _dish?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OrderItemDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
