        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'remove_from_basket_input.g.dart';

abstract class RemoveFromBasketInput implements Built<RemoveFromBasketInput, RemoveFromBasketInputBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'dishId')
    String get dishId;
    
        @nullable
    @BuiltValueField(wireName: r'restaurantId')
    String get restaurantId;
    
        @nullable
    @BuiltValueField(wireName: r'quantity')
    int get quantity;

    // Boilerplate code needed to wire-up generated code
    RemoveFromBasketInput._();

    factory RemoveFromBasketInput([updates(RemoveFromBasketInputBuilder b)]) = _$RemoveFromBasketInput;
    static Serializer<RemoveFromBasketInput> get serializer => _$removeFromBasketInputSerializer;

}

