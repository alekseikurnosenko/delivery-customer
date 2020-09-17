import 'package:delivery_customer/util/appTextStyle.dart';
import 'package:delivery_customer/iocContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:openapi/model/basket.dart';
import 'package:openapi/model/basket_item.dart';
import 'package:openapi/model/remove_from_basket_input.dart';

part 'basketPage.g.dart';

@swidget
Widget _basketItem(
    BuildContext context, BasketItem basketItem, Function onDeleteClick) {
  return Container(
      padding: EdgeInsets.only(left: 16, top: 8, bottom: 8),
      child: Row(
        children: [
          Text("${basketItem.quantity}x"),
          Container(width: 16),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(basketItem.dish.name,
                      style: AppTextStyle.sectionHeader(context)),
                ],
              ),
              Text(basketItem.dish.name, style: AppTextStyle.copy(context))
            ],
          )),
          Text(basketItem.totalPrice.formatted,
              style: AppTextStyle.sectionHeader(context)),
          Container(
            width: 0,
          ),
          IconButton(
              splashRadius: 24,
              padding: EdgeInsets.all(0),
              icon: Icon(Icons.delete_outline, color: Colors.black38),
              onPressed: onDeleteClick),
        ],
      ));
}

@swidget
Widget _continueButton(BuildContext context, Basket basket) =>
    RawMaterialButton(
        key: Key('ContinueButton'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        fillColor: ButtonTheme.of(context).colorScheme.primary,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Row(mainAxisSize: MainAxisSize.min, children: [
              Expanded(child: Container()),
              Expanded(
                  child: Text("Continue",
                      textAlign: TextAlign.center,
                      style: AppTextStyle.button(context))),
              Expanded(
                  child: Text(basket.totalAmount.formatted,
                      textAlign: TextAlign.end,
                      style: AppTextStyle.button(context))),
            ])),
        onPressed: () {
          Navigator.of(context).pushNamed("/checkout");
        });

@hwidget
Widget basketPage(BuildContext context) {
  var basketService = IocContainer().basketService;
  var basket = useStream(useMemoized(() => basketService.basket));

  var onDishDeleteClick = (BasketItem basketItem) {
    var input = RemoveFromBasketInput((b) => b
      ..dishId = basketItem.dish.id
      ..quantity = basketItem.quantity
      ..restaurantId = basket.data.restaurant.id);

    // TODO: loading state?
    basketService.removeFromBasket(input);
  };
  var onCloseClick = () {
    Navigator.of(context).pop();
  };

  if (!basket.hasData) {
    // TODO: loading
    return Container();
  }

  var topBar = Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
    Expanded(
        child: Container(
            alignment: Alignment.centerLeft,
            child: IconButton(
                padding: EdgeInsets.all(0),
                icon: Icon(Icons.close),
                onPressed: onCloseClick))),
    Expanded(
      child: Container(
          child: Center(
              child: Text(basket.data.restaurant.name,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.sectionHeader(context)))),
    ),
    Expanded(child: Container())
  ]);

  var list = basket.data.items
      .expand((item) => [
            _BasketItem(item, () => onDishDeleteClick(item)),
            Divider(
              height: 1,
              indent: 48,
            ),
          ])
      .toList();
  list.removeLast();

  return Scaffold(
      key: Key('BasketPage'),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),

        // leading: IconButton(icon: Icon(Icons.close), onPressed: () {}),
        elevation: 1,
        centerTitle: true,
        title: Text(
          basket.data.restaurant.name,
          style: AppTextStyle.sectionHeader(context),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(children: [
        // topBar,
        Expanded(
            child: SingleChildScrollView(
          child: Column(children: [Container(child: Column(children: list))]),
        )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: _ContinueButton(basket.data),
        )
      ]));
}
