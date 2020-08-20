            import 'package:openapi/model/order_status.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_preparation_finished.g.dart';

abstract class OrderPreparationFinished implements Built<OrderPreparationFinished, OrderPreparationFinishedBuilder> {

    
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
    OrderPreparationFinished._();

    factory OrderPreparationFinished([updates(OrderPreparationFinishedBuilder b)]) = _$OrderPreparationFinished;
    static Serializer<OrderPreparationFinished> get serializer => _$orderPreparationFinishedSerializer;

}

