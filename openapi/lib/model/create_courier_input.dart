        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_courier_input.g.dart';

abstract class CreateCourierInput implements Built<CreateCourierInput, CreateCourierInputBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    // Boilerplate code needed to wire-up generated code
    CreateCourierInput._();

    factory CreateCourierInput([updates(CreateCourierInputBuilder b)]) = _$CreateCourierInput;
    static Serializer<CreateCourierInput> get serializer => _$createCourierInputSerializer;

}

