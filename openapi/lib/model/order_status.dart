        import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_status.g.dart';

class OrderStatus extends EnumClass {

  @BuiltValueEnumConst(wireName: "Canceled")
  static const OrderStatus canceled = _$canceled;
  @BuiltValueEnumConst(wireName: "Placed")
  static const OrderStatus placed = _$placed;
  @BuiltValueEnumConst(wireName: "Paid")
  static const OrderStatus paid = _$paid;
  @BuiltValueEnumConst(wireName: "Preparing")
  static const OrderStatus preparing = _$preparing;
  @BuiltValueEnumConst(wireName: "AwaitingPickup")
  static const OrderStatus awaitingPickup = _$awaitingPickup;
  @BuiltValueEnumConst(wireName: "InDelivery")
  static const OrderStatus inDelivery = _$inDelivery;
  @BuiltValueEnumConst(wireName: "Delivered")
  static const OrderStatus delivered = _$delivered;

  static Serializer<OrderStatus> get serializer => _$orderStatusSerializer;

  const OrderStatus._(String name): super(name);

  static BuiltSet<OrderStatus> get values => _$values;
  static OrderStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class OrderStatusMixin = Object with _$OrderStatusMixin;

