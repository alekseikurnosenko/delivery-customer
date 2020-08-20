            import 'package:openapi/model/basket_item.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/restaurant.dart';
            import 'package:openapi/model/money_view.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'basket.g.dart';

abstract class Basket implements Built<Basket, BasketBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'restaurant')
    Restaurant get restaurant;
    
        @nullable
    @BuiltValueField(wireName: r'items')
    BuiltList<BasketItem> get items;
    
        @nullable
    @BuiltValueField(wireName: r'totalAmount')
    MoneyView get totalAmount;
    
        @nullable
    @BuiltValueField(wireName: r'isAboveMinimumOrder')
    bool get isAboveMinimumOrder;
    
        @nullable
    @BuiltValueField(wireName: r'aboveMinimumOrder')
    bool get aboveMinimumOrder;

    // Boilerplate code needed to wire-up generated code
    Basket._();

    factory Basket([updates(BasketBuilder b)]) = _$Basket;
    static Serializer<Basket> get serializer => _$basketSerializer;

}

