            import 'package:openapi/model/dish.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_item_dto.g.dart';

abstract class OrderItemDTO implements Built<OrderItemDTO, OrderItemDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'dish')
    Dish get dish;
    
        @nullable
    @BuiltValueField(wireName: r'quantity')
    int get quantity;

    // Boilerplate code needed to wire-up generated code
    OrderItemDTO._();

    factory OrderItemDTO([updates(OrderItemDTOBuilder b)]) = _$OrderItemDTO;
    static Serializer<OrderItemDTO> get serializer => _$orderItemDTOSerializer;

}

