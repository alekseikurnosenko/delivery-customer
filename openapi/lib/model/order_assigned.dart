            import 'package:openapi/model/address.dart';
            import 'package:openapi/model/order_status.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_assigned.g.dart';

abstract class OrderAssigned implements Built<OrderAssigned, OrderAssignedBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'orderId')
    String get orderId;
    
        @nullable
    @BuiltValueField(wireName: r'courierId')
    String get courierId;
    
        @nullable
    @BuiltValueField(wireName: r'courierFullName')
    String get courierFullName;
    
        @nullable
    @BuiltValueField(wireName: r'restaurantId')
    String get restaurantId;
    
        @nullable
    @BuiltValueField(wireName: r'restaurantName')
    String get restaurantName;
    
        @nullable
    @BuiltValueField(wireName: r'restaurantAddress')
    Address get restaurantAddress;
    
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
    OrderAssigned._();

    factory OrderAssigned([updates(OrderAssignedBuilder b)]) = _$OrderAssigned;
    static Serializer<OrderAssigned> get serializer => _$orderAssignedSerializer;

}

