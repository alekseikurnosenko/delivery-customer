            import 'package:openapi/model/sort.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/pageable.dart';
            import 'package:openapi/model/order.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'page_order.g.dart';

abstract class PageOrder implements Built<PageOrder, PageOrderBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'totalPages')
    int get totalPages;
    
        @nullable
    @BuiltValueField(wireName: r'totalElements')
    int get totalElements;
    
        @nullable
    @BuiltValueField(wireName: r'first')
    bool get first;
    
        @nullable
    @BuiltValueField(wireName: r'number')
    int get number;
    
        @nullable
    @BuiltValueField(wireName: r'sort')
    Sort get sort;
    
        @nullable
    @BuiltValueField(wireName: r'numberOfElements')
    int get numberOfElements;
    
        @nullable
    @BuiltValueField(wireName: r'pageable')
    Pageable get pageable;
    
        @nullable
    @BuiltValueField(wireName: r'last')
    bool get last;
    
        @nullable
    @BuiltValueField(wireName: r'size')
    int get size;
    
        @nullable
    @BuiltValueField(wireName: r'content')
    BuiltList<Order> get content;
    
        @nullable
    @BuiltValueField(wireName: r'empty')
    bool get empty;

    // Boilerplate code needed to wire-up generated code
    PageOrder._();

    factory PageOrder([updates(PageOrderBuilder b)]) = _$PageOrder;
    static Serializer<PageOrder> get serializer => _$pageOrderSerializer;

}

