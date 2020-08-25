            import 'package:openapi/model/address.dart';
            import 'package:openapi/model/order_item.dart';
            import 'package:openapi/model/order_status.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/restaurant.dart';
            import 'package:openapi/model/courier.dart';
            import 'package:openapi/model/money_view.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order.g.dart';

abstract class Order implements Built<Order, OrderBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    String get id;
    
        @nullable
    @BuiltValueField(wireName: r'createdAt')
    String get createdAt;
    
        @nullable
    @BuiltValueField(wireName: r'totalAmount')
    MoneyView get totalAmount;
    
        @nullable
    @BuiltValueField(wireName: r'deliveryAddress')
    Address get deliveryAddress;
    
        @nullable
    @BuiltValueField(wireName: r'restaurant')
    Restaurant get restaurant;
    
        @nullable
    @BuiltValueField(wireName: r'courier')
    Courier get courier;
    
        @nullable
    @BuiltValueField(wireName: r'status')
    OrderStatus get status;
        //enum statusEnum {  Canceled,  Placed,  Paid,  Preparing,  AwaitingPickup,  InDelivery,  Delivered,  };
    
        @nullable
    @BuiltValueField(wireName: r'items')
    BuiltList<OrderItem> get items;

    // Boilerplate code needed to wire-up generated code
    Order._();

    factory Order([updates(OrderBuilder b)]) = _$Order;
    static Serializer<Order> get serializer => _$orderSerializer;

}

