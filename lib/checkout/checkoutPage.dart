import 'package:delivery_customer/components/actionButton.dart';
import 'package:delivery_customer/iocContainer.dart';
import 'package:delivery_customer/order/orderPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'checkoutPage.g.dart';

@hwidget
Widget checkoutPage(BuildContext context) {
  var orderButtonState = useState(ButtonState.normal());

  var onOrderClicked = () async {
    orderButtonState.value = ButtonState.loading();
    var order = await IocContainer().api.getBasketApi().checkout();

    // TODO: somehow reset Food navigator
    Navigator.of(context).popUntil((route) {
      return route.isFirst;
    });
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => OrderPage(order.data)));
  };

  return SafeArea(
      child: Scaffold(
    body: Column(
      children: [
        ActionButton(
          label: Text("Order"),
          onPressed: onOrderClicked,
        )
      ],
    ),
  ));
}
