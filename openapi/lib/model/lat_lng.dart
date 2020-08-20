        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lat_lng.g.dart';

abstract class LatLng implements Built<LatLng, LatLngBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'latitude')
    double get latitude;
    
        @nullable
    @BuiltValueField(wireName: r'longitude')
    double get longitude;

    // Boilerplate code needed to wire-up generated code
    LatLng._();

    factory LatLng([updates(LatLngBuilder b)]) = _$LatLng;
    static Serializer<LatLng> get serializer => _$latLngSerializer;

}

