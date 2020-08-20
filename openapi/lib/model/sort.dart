        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sort.g.dart';

abstract class Sort implements Built<Sort, SortBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'sorted')
    bool get sorted;
    
        @nullable
    @BuiltValueField(wireName: r'unsorted')
    bool get unsorted;
    
        @nullable
    @BuiltValueField(wireName: r'empty')
    bool get empty;

    // Boilerplate code needed to wire-up generated code
    Sort._();

    factory Sort([updates(SortBuilder b)]) = _$Sort;
    static Serializer<Sort> get serializer => _$sortSerializer;

}

