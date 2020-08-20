            import 'package:openapi/model/sort.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pageable.g.dart';

abstract class Pageable implements Built<Pageable, PageableBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'sort')
    Sort get sort;
    
        @nullable
    @BuiltValueField(wireName: r'pageNumber')
    int get pageNumber;
    
        @nullable
    @BuiltValueField(wireName: r'pageSize')
    int get pageSize;
    
        @nullable
    @BuiltValueField(wireName: r'paged')
    bool get paged;
    
        @nullable
    @BuiltValueField(wireName: r'unpaged')
    bool get unpaged;
    
        @nullable
    @BuiltValueField(wireName: r'offset')
    int get offset;

    // Boilerplate code needed to wire-up generated code
    Pageable._();

    factory Pageable([updates(PageableBuilder b)]) = _$Pageable;
    static Serializer<Pageable> get serializer => _$pageableSerializer;

}

