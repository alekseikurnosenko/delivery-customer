        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_item_to_basket_input.g.dart';

abstract class AddItemToBasketInput implements Built<AddItemToBasketInput, AddItemToBasketInputBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'dishId')
    String get dishId;
    
        @nullable
    @BuiltValueField(wireName: r'restaurantId')
    String get restaurantId;
    
        @nullable
    @BuiltValueField(wireName: r'quantity')
    int get quantity;
    
        @nullable
    @BuiltValueField(wireName: r'forceNewBasket')
    bool get forceNewBasket;

    // Boilerplate code needed to wire-up generated code
    AddItemToBasketInput._();

    factory AddItemToBasketInput([updates(AddItemToBasketInputBuilder b)]) = _$AddItemToBasketInput;
    static Serializer<AddItemToBasketInput> get serializer => _$addItemToBasketInputSerializer;

}

