import 'package:delivery_customer/util/appTextStyle.dart';
import 'package:delivery_customer/order/map.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:openapi/model/order.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:openapi/model/order_status.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

part 'orderPage.g.dart';

String _getOrderStatusTitle(Order order) {
  switch (order.status) {
    case OrderStatus.placed:
      return "Processing payment";
    case OrderStatus.paid:
      return "Confirming your order";
    case OrderStatus.preparing:
      return "Order is being prepared";
    case OrderStatus.awaitingPickup:
      return "Awaiting pickup";
    case OrderStatus.inDelivery:
      return "In delivery";
    case OrderStatus.delivered:
      return "Successfully delivered";
    case OrderStatus.canceled:
      return "Order was canceled";
  }
}

String _getOrderStatusDescription(Order order) {
  switch (order.status) {
    case OrderStatus.placed:
      return "Waiting for the order payment to be processed";
    case OrderStatus.paid:
      return "We sent your order to ${order.restaurant.name} for final confirmation";
    case OrderStatus.preparing:
      return "${order.restaurant.name} has confimed your order and is currently preparing it";
    case OrderStatus.awaitingPickup:
      return "Waiting for courier to pick up your order";
    case OrderStatus.inDelivery:
      return "Your courier is heading to you with your order";
    case OrderStatus.delivered:
      return "Your order was successfully delivered";
    case OrderStatus.canceled:
      return "Your order was canceled"; // TODO: show reason here?
  }
}

@swidget
Widget _status(BuildContext context, Order order) {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(_getOrderStatusTitle(order),
              textAlign: TextAlign.start,
              style: AppTextStyle.dialogHeader(context)),
          Container(height: 8),
          Row(
            children: [
              Text("Arrives in ",
                  style:
                      AppTextStyle.copy(context).copyWith(color: Colors.black)),
              Text(
                "20-25 min",
                style: AppTextStyle.copy(context).copyWith(color: Colors.red),
              ),
            ],
          ),
          Container(height: 8),
          Text(
            _getOrderStatusDescription(order),
            style: AppTextStyle.copy(context),
          ),
          Container(height: 8),
        ],
      ));
}

@swidget
Widget _courier(BuildContext context, Order order) {
  var courier = order.courier;
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(courier?.fullName ?? "Unassigned",
            style: AppTextStyle.sectionHeader(context)),
        Container(
          height: 8,
        ),
        Text(courier != null ? "Your courier" : "Searching for courier",
            style: AppTextStyle.copy(context)),
      ],
    ),
  );
}

@swidget
Widget _orderDetails(BuildContext context, Order order) {
  var items = order.items
      .map((item) => Text(
            "${item.quantity}x ${item.dish.name}",
            style: AppTextStyle.copy(context),
          ))
      .toList();

  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text("Order details", style: AppTextStyle.sectionHeader(context)),
        Container(height: 8),
        ...items
      ],
    ),
  );
}

@swidget
Widget _sheetContent(BuildContext context, Order order) {
  return Column(
    children: [
      _Status(order),
      Divider(
        indent: 8,
      ),
      _Courier(order),
      Divider(
        indent: 8,
      ),
      _OrderDetails(order)
    ],
  );
}

@hwidget
Widget orderPage(BuildContext context, Order order) {
  var height = MediaQuery.of(context).size.height;
  var peekHeight = height * 0.3;
  var maxHeight = height * 0.8;

  print(height);

  return Scaffold(
      body: SlidingUpPanel(
    minHeight: peekHeight,
    maxHeight: maxHeight,
    borderRadius: BorderRadius.circular(24),
    body: Stack(children: [
      Map(
          pickup: order.restaurant.address.location,
          dropoff: order.deliveryAddress.location,
          padding: EdgeInsets.only(bottom: peekHeight + 24)),
      Container(
          margin: EdgeInsets.only(top: 24.0 + 8, left: 8),
          child: FloatingActionButton(
              elevation: 4,
              hoverElevation: 6,
              mini: true,
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              child: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              }))
    ]),
    panel: Card(
      elevation: 12.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
      margin: const EdgeInsets.all(0),
      child: Container(
          child: Column(
        children: [
          Container(height: 8),
          Container(
            height: 5,
            width: 30,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(16)),
          ),
          Container(height: 16),
          _SheetContent(order),
        ],
      )),
    ),
  ));
}
