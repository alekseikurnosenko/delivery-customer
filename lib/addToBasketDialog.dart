import 'package:delivery_customer/appTextStyle.dart';
import 'package:delivery_customer/components/actionButton.dart';
import 'package:delivery_customer/iocContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:openapi/model/dish.dart';
import 'package:openapi/model/add_item_to_basket_input.dart';
import 'package:openapi/model/restaurant.dart';

part 'addToBasketDialog.g.dart';

@hwidget
Widget addToBasketDialog(
    BuildContext context, Dish dish, Restaurant restaurant) {
  var count = useState(1);
  var onPlusClick = () {
    count.value++;
  };
  var onMinusClick = () {
    if (count.value > 1) {
      count.value--;
    }
  };

  var totalPrice = useMemoized(() {
    return "${(dish.price.amount * count.value).toStringAsFixed(2)} ${dish.price.currencyCode}";
  }, [count.value]);
  var imageUrl =
      "https://img.cdn4dd.com/cdn-cgi/image/fit=contain,width=600,format=auto,quality=50/https://cdn.doordash.com/media/photos/3fad35a0-3c37-4b26-995d-412042b7013a-retina-large.jpg";

  var onAddClick = () async {
    var input = AddItemToBasketInput((b) => b
      ..dishId = dish.id
      ..restaurantId = restaurant.id
      ..forceNewBasket = true
      ..quantity = count.value);
    await IocContainer().basketService.addToBasket(input);

    Navigator.pop(context);
  };

  return Material(
      child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(dish.name, style: AppTextStyle.dialogHeader(context)),
              Container(height: 16),
              Container(
                  height: 160,
                  width: double.infinity,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.fitWidth,
                  )),
              Container(height: 16),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Row(children: [
                  IconButton(
                      splashRadius: 24,
                      icon: Icon(
                        Icons.remove,
                        color: Colors.black,
                      ),
                      onPressed: onMinusClick),
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.all(Radius.circular(2))),
                      child: Text(count.value.toString())),
                  IconButton(
                      splashRadius: 24,
                      icon: Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                      onPressed: onPlusClick),
                ]),
                ActionButton(
                  onPressed: onAddClick,
                  style: ButtonStyle.primary(),
                  label: Text(totalPrice),
                )
              ])
            ],
          )));
}
