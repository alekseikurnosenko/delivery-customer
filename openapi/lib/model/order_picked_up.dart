            import 'package:openapi/model/order_status.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_picked_up.g.dart';

abstract class OrderPickedUp implements Built<OrderPickedUp, OrderPickedUpBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'orderId')
    String get orderId;
    
        @nullable
    @BuiltValueField(wireName: r'status')
    OrderStatus get status;
        //enum statusEnum {  Canceled,  Placed,  Paid,  Preparing,  AwaitingPickup,  InDelivery,  Delivered,  };
    
        @nullable
    @BuiltValueField(wireName: r'routingKey')
    String get routingKey;

    // Boilerplate code needed to wire-up generated code
    OrderPickedUp._();

    factory OrderPickedUp([updates(OrderPickedUpBuilder b)]) = _$OrderPickedUp;
    static Serializer<OrderPickedUp> get serializer => _$orderPickedUpSerializer;

}

