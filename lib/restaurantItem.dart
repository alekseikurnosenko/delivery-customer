import 'package:delivery_customer/appTextStyle.dart';
import 'package:delivery_customer/homePage.dart';
import 'package:delivery_customer/restaurantPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:openapi/model/restaurant.dart';

part 'restaurantItem.g.dart';

@swidget
Widget restaurantItem(BuildContext context, Restaurant restaurant) {
  var imageUrl =
      "https://img.cdn4dd.com/cdn-cgi/image/fit=contain,width=600,format=auto,quality=50/https://cdn.doordash.com/media/photos/ecd0a764-ee9e-46c7-a1ef-8fbfd3901085-retina-large.jpg";

  var onTap = () {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => RestaurantPage(restaurant)));
  };

  return InkWell(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.all(16),
          child: Column(children: [
            Container(
                height: 160,
                width: double.infinity,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.fitWidth,
                    ))),
            Container(height: 8),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Text(restaurant.name, style: AppTextStyle.sectionHeader(context))
            ]),
            Container(height: 4),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("\$\$ • Chinese, Asian, Takeout",
                  style: AppTextStyle.copy(context)),
              Text("29 min", style: AppTextStyle.copy(context))
            ]),
            Container(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    RestaurantRating(4.8),
                    Container(width: 4),
                    Text("500+ ratings", style: AppTextStyle.copy(context))
                  ],
                ),
                Text("\$0.99 delivery", style: AppTextStyle.copy(context))
              ],
            )
          ])));
}
