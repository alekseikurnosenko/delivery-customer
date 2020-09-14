import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:openapi/model/courier_location_updated.dart';
import 'package:openapi/model/order_assigned.dart';
import 'package:openapi/model/order_canceled.dart';
import 'package:openapi/model/order_delivered.dart';
import 'package:openapi/model/order_paid.dart';
import 'package:openapi/model/order_picked_up.dart';
import 'package:openapi/model/order_preparation_finished.dart';
import 'package:openapi/model/order_preparation_started.dart';
import 'package:openapi/serializers.dart';
import 'package:web_socket_channel/html.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'main.dart';

class WebsocketClient {
  WebSocketChannel _channel;

  Stream<dynamic> events;

  WebsocketClient() {
    if (kIsWeb) {
      _channel = HtmlWebSocketChannel.connect(
          'wss://enigmatic-garden-23553.herokuapp.com/ws');
    } else {
      _channel = IOWebSocketChannel.connect(
          'wss://enigmatic-garden-23553.herokuapp.com/ws',
          headers: {"Authorization": "Bearer ${MyApp.token}"});
    }

    events = _channel.stream.map((event) {
      var message = jsonDecode(event);
      var type = message['type'];
      var payload = jsonDecode(message['payload']);
      switch (type) {
        case "com.delivery.demo.order.OrderPaid":
          {
            return standardSerializers.deserializeWith(
                OrderPaid.serializer, payload);
          }
        case "com.delivery.demo.order.OrderAssigned":
          {
            return standardSerializers.deserializeWith(
                OrderAssigned.serializer, payload);
          }
        case "com.delivery.demo.order.OrderPreparationStarted":
          {
            return standardSerializers.deserializeWith(
                OrderPreparationStarted.serializer, payload);
          }
        case "com.delivery.demo.order.OrderPreparationFinished":
          {
            return standardSerializers.deserializeWith(
                OrderPreparationFinished.serializer, payload);
          }
        case "com.delivery.demo.order.OrderPickedUp":
          {
            return standardSerializers.deserializeWith(
                OrderPickedUp.serializer, payload);
          }
        case "com.delivery.demo.order.OrderDelivered":
          {
            return standardSerializers.deserializeWith(
                OrderDelivered.serializer, payload);
          }
        case "com.delivery.demo.order.OrderCanceled":
          {
            return standardSerializers.deserializeWith(
                OrderCanceled.serializer, payload);
          }
        case "com.delivery.demo.courier.CourierLocationUpdated":
          {
            return standardSerializers.deserializeWith(
                CourierLocationUpdated.serializer, payload);
          }
        default:
          {
            print("Unknown event type: $type");
            return null;
          }
      }
    }).where((event) => event != null);
  }
}
