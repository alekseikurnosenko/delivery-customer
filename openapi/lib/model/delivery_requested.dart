            import 'package:openapi/model/address.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_requested.g.dart';

abstract class DeliveryRequested implements Built<DeliveryRequested, DeliveryRequestedBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'orderId')
    String get orderId;
    
        @nullable
    @BuiltValueField(wireName: r'courierId')
    String get courierId;
    
        @nullable
    @BuiltValueField(wireName: r'pickup')
    Address get pickup;
    
        @nullable
    @BuiltValueField(wireName: r'dropoff')
    Address get dropoff;
    
        @nullable
    @BuiltValueField(wireName: r'routingKey')
    String get routingKey;

    // Boilerplate code needed to wire-up generated code
    DeliveryRequested._();

    factory DeliveryRequested([updates(DeliveryRequestedBuilder b)]) = _$DeliveryRequested;
    static Serializer<DeliveryRequested> get serializer => _$deliveryRequestedSerializer;

}

