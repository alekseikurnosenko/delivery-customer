            import 'package:openapi/model/dish.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_item.g.dart';

abstract class OrderItem implements Built<OrderItem, OrderItemBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'dish')
    Dish get dish;
    
        @nullable
    @BuiltValueField(wireName: r'quantity')
    int get quantity;

    // Boilerplate code needed to wire-up generated code
    OrderItem._();

    factory OrderItem([updates(OrderItemBuilder b)]) = _$OrderItem;
    static Serializer<OrderItem> get serializer => _$orderItemSerializer;

}

