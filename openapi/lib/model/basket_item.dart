            import 'package:openapi/model/dish.dart';
            import 'package:openapi/model/money_view.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'basket_item.g.dart';

abstract class BasketItem implements Built<BasketItem, BasketItemBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'dish')
    Dish get dish;
    
        @nullable
    @BuiltValueField(wireName: r'quantity')
    int get quantity;
    
        @nullable
    @BuiltValueField(wireName: r'totalPrice')
    MoneyView get totalPrice;

    // Boilerplate code needed to wire-up generated code
    BasketItem._();

    factory BasketItem([updates(BasketItemBuilder b)]) = _$BasketItem;
    static Serializer<BasketItem> get serializer => _$basketItemSerializer;

}

