import 'package:delivery_customer/util/appTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:openapi/model/basket.dart';

part 'basketButton.g.dart';

@swidget
Widget basketButton(BuildContext context, Basket basket) {
  return RawMaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      fillColor: ButtonTheme.of(context).colorScheme.primary,
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            Container(
                padding: EdgeInsets.all(0),
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 16,
                )),
            Container(width: 32),
            Column(
              children: [
                Text(
                  "VIEW CART",
                  style: AppTextStyle.copy(context).copyWith(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Container(height: 2),
                Text(basket.restaurant.name,
                    style: AppTextStyle.sectionHeader(context)
                        .copyWith(fontSize: 12.0, color: Colors.white))
              ],
            ),
            Container(width: 32),
            Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[300].withOpacity(0.3)),
                child: Text(
                  basket.items.length.toString(),
                  style: AppTextStyle.sectionHeader(context)
                      .copyWith(color: Colors.white),
                )),
          ])),
      onPressed: () {
        Navigator.of(context).pushNamed("/basket");
      });
}
