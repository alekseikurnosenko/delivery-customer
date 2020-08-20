        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edit_dish_input.g.dart';

abstract class EditDishInput implements Built<EditDishInput, EditDishInputBuilder> {

    
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
    EditDishInput._();

    factory EditDishInput([updates(EditDishInputBuilder b)]) = _$EditDishInput;
    static Serializer<EditDishInput> get serializer => _$editDishInputSerializer;

}

