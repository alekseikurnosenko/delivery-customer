            import 'package:openapi/model/lat_lng.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_location_input.g.dart';

abstract class UpdateLocationInput implements Built<UpdateLocationInput, UpdateLocationInputBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'latLng')
    LatLng get latLng;

    // Boilerplate code needed to wire-up generated code
    UpdateLocationInput._();

    factory UpdateLocationInput([updates(UpdateLocationInputBuilder b)]) = _$UpdateLocationInput;
    static Serializer<UpdateLocationInput> get serializer => _$updateLocationInputSerializer;

}

