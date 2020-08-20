            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/lat_lng.dart';
            import 'package:openapi/model/order.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'courier.g.dart';

abstract class Courier implements Built<Courier, CourierBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    String get id;
    
        @nullable
    @BuiltValueField(wireName: r'fullName')
    String get fullName;
    
        @nullable
    @BuiltValueField(wireName: r'onShift')
    bool get onShift;
    
        @nullable
    @BuiltValueField(wireName: r'location')
    LatLng get location;
    
        @nullable
    @BuiltValueField(wireName: r'activeOrders')
    BuiltList<Order> get activeOrders;

    // Boilerplate code needed to wire-up generated code
    Courier._();

    factory Courier([updates(CourierBuilder b)]) = _$Courier;
    static Serializer<Courier> get serializer => _$courierSerializer;

}

