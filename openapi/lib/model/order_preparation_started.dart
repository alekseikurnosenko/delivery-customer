            import 'package:openapi/model/order_status.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_preparation_started.g.dart';

abstract class OrderPreparationStarted implements Built<OrderPreparationStarted, OrderPreparationStartedBuilder> {

    
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
    OrderPreparationStarted._();

    factory OrderPreparationStarted([updates(OrderPreparationStartedBuilder b)]) = _$OrderPreparationStarted;
    static Serializer<OrderPreparationStarted> get serializer => _$orderPreparationStartedSerializer;

}

