            import 'package:openapi/model/address.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant.g.dart';

abstract class Restaurant implements Built<Restaurant, RestaurantBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    String get id;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'address')
    Address get address;
    
        @nullable
    @BuiltValueField(wireName: r'currency')
    String get currency;

    // Boilerplate code needed to wire-up generated code
    Restaurant._();

    factory Restaurant([updates(RestaurantBuilder b)]) = _$Restaurant;
    static Serializer<Restaurant> get serializer => _$restaurantSerializer;

}

