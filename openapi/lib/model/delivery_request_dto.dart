            import 'package:openapi/model/address.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_request_dto.g.dart';

abstract class DeliveryRequestDTO implements Built<DeliveryRequestDTO, DeliveryRequestDTOBuilder> {

    
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

    // Boilerplate code needed to wire-up generated code
    DeliveryRequestDTO._();

    factory DeliveryRequestDTO([updates(DeliveryRequestDTOBuilder b)]) = _$DeliveryRequestDTO;
    static Serializer<DeliveryRequestDTO> get serializer => _$deliveryRequestDTOSerializer;

}

