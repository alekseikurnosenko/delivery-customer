            import 'package:openapi/model/order_status.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_delivered.g.dart';

abstract class OrderDelivered implements Built<OrderDelivered, OrderDeliveredBuilder> {

    
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
    OrderDelivered._();

    factory OrderDelivered([updates(OrderDeliveredBuilder b)]) = _$OrderDelivered;
    static Serializer<OrderDelivered> get serializer => _$orderDeliveredSerializer;

}

