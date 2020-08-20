            import 'package:openapi/model/address.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_restaurant_input.g.dart';

abstract class CreateRestaurantInput implements Built<CreateRestaurantInput, CreateRestaurantInputBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'address')
    Address get address;
    
        @nullable
    @BuiltValueField(wireName: r'currency')
    String get currency;
    
        @nullable
    @BuiltValueField(wireName: r'imageUrl')
    String get imageUrl;

    // Boilerplate code needed to wire-up generated code
    CreateRestaurantInput._();

    factory CreateRestaurantInput([updates(CreateRestaurantInputBuilder b)]) = _$CreateRestaurantInput;
    static Serializer<CreateRestaurantInput> get serializer => _$createRestaurantInputSerializer;

}

