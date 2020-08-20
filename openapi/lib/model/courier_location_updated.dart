            import 'package:openapi/model/lat_lng.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'courier_location_updated.g.dart';

abstract class CourierLocationUpdated implements Built<CourierLocationUpdated, CourierLocationUpdatedBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'courierId')
    String get courierId;
    
        @nullable
    @BuiltValueField(wireName: r'location')
    LatLng get location;
    
        @nullable
    @BuiltValueField(wireName: r'routingKey')
    String get routingKey;

    // Boilerplate code needed to wire-up generated code
    CourierLocationUpdated._();

    factory CourierLocationUpdated([updates(CourierLocationUpdatedBuilder b)]) = _$CourierLocationUpdated;
    static Serializer<CourierLocationUpdated> get serializer => _$courierLocationUpdatedSerializer;

}

