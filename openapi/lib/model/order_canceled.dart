            import 'package:openapi/model/order_status.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_canceled.g.dart';

abstract class OrderCanceled implements Built<OrderCanceled, OrderCanceledBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'orderId')
    String get orderId;
    
        @nullable
    @BuiltValueField(wireName: r'status')
    OrderStatus get status;
        //enum statusEnum {  Canceled,  Placed,  Paid,  Preparing,  AwaitingPickup,  InDelivery,  Delivered,  };
    
        @nullable
    @BuiltValueField(wireName: r'reason')
    String get reason;
    
        @nullable
    @BuiltValueField(wireName: r'routingKey')
    String get routingKey;

    // Boilerplate code needed to wire-up generated code
    OrderCanceled._();

    factory OrderCanceled([updates(OrderCanceledBuilder b)]) = _$OrderCanceled;
    static Serializer<OrderCanceled> get serializer => _$orderCanceledSerializer;

}

