import 'package:delivery_customer/components/actionButton.dart';
import 'package:delivery_customer/iocContainer.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

part 'checkoutPage.g.dart';

@hwidget
Widget checkoutPage(BuildContext context) {
  var orderButtonState = useState(ButtonState.normal());

  var onOrderClicked = () async {
    orderButtonState.value = ButtonState.loading();
    var order = await IocContainer().api.getBasketApi().checkout();
    print(order);
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
