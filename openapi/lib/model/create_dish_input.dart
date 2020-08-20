        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_dish_input.g.dart';

abstract class CreateDishInput implements Built<CreateDishInput, CreateDishInputBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'price')
    double get price;
    
        @nullable
    @BuiltValueField(wireName: r'imageUrl')
    String get imageUrl;

    // Boilerplate code needed to wire-up generated code
    CreateDishInput._();

    factory CreateDishInput([updates(CreateDishInputBuilder b)]) = _$CreateDishInput;
    static Serializer<CreateDishInput> get serializer => _$createDishInputSerializer;

}

