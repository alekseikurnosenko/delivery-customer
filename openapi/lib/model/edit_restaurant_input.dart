            import 'package:openapi/model/address.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edit_restaurant_input.g.dart';

abstract class EditRestaurantInput implements Built<EditRestaurantInput, EditRestaurantInputBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'address')
    Address get address;
    
        @nullable
    @BuiltValueField(wireName: r'imageUrl')
    String get imageUrl;

    // Boilerplate code needed to wire-up generated code
    EditRestaurantInput._();

    factory EditRestaurantInput([updates(EditRestaurantInputBuilder b)]) = _$EditRestaurantInput;
    static Serializer<EditRestaurantInput> get serializer => _$editRestaurantInputSerializer;

}

