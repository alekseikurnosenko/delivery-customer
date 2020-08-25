            import 'package:openapi/model/address.dart';
            import 'package:openapi/model/order_status.dart';
            import 'package:openapi/model/money_view.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_paid.g.dart';

abstract class OrderPaid implements Built<OrderPaid, OrderPaidBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'userId')
    String get userId;
    
        @nullable
    @BuiltValueField(wireName: r'orderId')
    String get orderId;
    
        @nullable
    @BuiltValueField(wireName: r'restaurantId')
    String get restaurantId;
    
        @nullable
    @BuiltValueField(wireName: r'restaurantName')
    String get restaurantName;
    
        @nullable
    @BuiltValueField(wireName: r'totalAmount')
    MoneyView get totalAmount;
    
        @nullable
    @BuiltValueField(wireName: r'deliveryAddress')
    Address get deliveryAddress;
    
        @nullable
    @BuiltValueField(wireName: r'status')
    OrderStatus get status;
        //enum statusEnum {  Canceled,  Placed,  Paid,  Preparing,  AwaitingPickup,  InDelivery,  Delivered,  };
    
        @nullable
    @BuiltValueField(wireName: r'routingKey')
    String get routingKey;

    // Boilerplate code needed to wire-up generated code
    OrderPaid._();

    factory OrderPaid([updates(OrderPaidBuilder b)]) = _$OrderPaid;
    static Serializer<OrderPaid> get serializer => _$orderPaidSerializer;

}

