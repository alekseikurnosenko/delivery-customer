        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant_added.g.dart';

abstract class RestaurantAdded implements Built<RestaurantAdded, RestaurantAddedBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'accountId')
    String get accountId;
    
        @nullable
    @BuiltValueField(wireName: r'restaurantId')
    String get restaurantId;
    
        @nullable
    @BuiltValueField(wireName: r'routingKey')
    String get routingKey;

    // Boilerplate code needed to wire-up generated code
    RestaurantAdded._();

    factory RestaurantAdded([updates(RestaurantAddedBuilder b)]) = _$RestaurantAdded;
    static Serializer<RestaurantAdded> get serializer => _$restaurantAddedSerializer;

}

