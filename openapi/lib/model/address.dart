            import 'package:openapi/model/lat_lng.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'address.g.dart';

abstract class Address implements Built<Address, AddressBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'location')
    LatLng get location;
    
        @nullable
    @BuiltValueField(wireName: r'address')
    String get address;
    
        @nullable
    @BuiltValueField(wireName: r'city')
    String get city;
    
        @nullable
    @BuiltValueField(wireName: r'country')
    String get country;

    // Boilerplate code needed to wire-up generated code
    Address._();

    factory Address([updates(AddressBuilder b)]) = _$Address;
    static Serializer<Address> get serializer => _$addressSerializer;

}

