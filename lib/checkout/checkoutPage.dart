import 'package:delivery_customer/components/actionButton.dart';
import 'package:delivery_customer/iocContainer.dart';
import 'package:delivery_customer/order/orderPage.dart';
import 'package:delivery_customer/util/appTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'checkoutPage.g.dart';

@swidget
Widget _paymentMethod(
    BuildContext context, String type, bool isChecked, Function onClicked) {
  return InkWell(
    onTap: () {
      onClicked();
    },
    child: Padding(
      padding: EdgeInsets.all(0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(type)),
          ),
          Theme(
              data: ThemeData(unselectedWidgetColor: Colors.transparent),
              child: Checkbox(
                activeColor: Colors.transparent,
                checkColor: Theme.of(context).accentColor,
                value: isChecked,
                onChanged: (isChecked) {
                  onClicked();
                },
              )),
        ],
      ),
    ),
  );
}

@hwidget
Widget _paymentSection(BuildContext context) {
  var methods = ["Credit card [••2598]", "Cash"];
  var selectedPaymentMethod = useState<String>(methods.first);

  var methodWidgets = methods.expand((m) => [
        _PaymentMethod(m, selectedPaymentMethod.value == m,
            () => selectedPaymentMethod.value = m),
        Divider(
          height: 1,
          indent: 16,
        ),
      ]);

  return Container(
      padding: EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Pay with",
                style: AppTextStyle.sectionHeader(context),
              )),
          ...methodWidgets,
        ],
      ));
}

@swidget
Widget _deliveryDetails(BuildContext context) {
  return Container(
      padding: EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Delivery details",
                style: AppTextStyle.sectionHeader(context),
              )),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Address"), Text("2312 Musselwhite Ave, 1/2")],
              )),
          Divider(
            height: 1,
            indent: 16,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Drop-off"), Text("Hand it to me")],
              )),
          Divider(
            height: 1,
            indent: 16,
          ),
        ],
      ));
}

@hwidget
Widget checkoutPage(BuildContext context) {
  var orderButtonState = useState(ButtonState.normal());

  var onOrderClicked = () async {
    orderButtonState.value = ButtonState.loading();
    var order = await IocContainer().basketService.checkout();

    // TODO: somehow reset Food navigator
    Navigator.of(context).popUntil((route) {
      return route.isFirst;
    });
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => OrderPage(order)));
  };

  return Scaffold(
    key: Key('CheckoutPage'),
    appBar: AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 1,
      centerTitle: true,
      title: Text("Checkout", style: AppTextStyle.sectionHeader(context)),
    ),
    backgroundColor: Colors.white,
    body: Stack(children: [
      Column(
        children: [
          _DeliveryDetails(),
          Container(
            height: 8,
            color: Colors.grey[200],
          ),
          _PaymentSection(),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              decoration: BoxDecoration(
                  border:
                      Border(top: BorderSide(width: 1, color: Colors.black12))),
              padding: EdgeInsets.all(16),
              child: ActionButton(
                key: Key('OrderButton'),
                label: Text("Order and pay"),
                onPressed: onOrderClicked,
              ))
        ],
      )
    ]),
  );
}
