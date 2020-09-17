import 'package:delivery_customer/catalog/restaurantListItem.dart';
import 'package:delivery_customer/homePage.dart';
import 'package:delivery_customer/iocContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:openapi/model/restaurant.dart';

part 'restaurantsListPage.g.dart';

@hwidget
Widget restaurantsListPage() {
  var restaurants = useState<List<Restaurant>>([]);

  useEffect(() {
    IocContainer()
        .api
        .getRestaurantsApi()
        .restaurants()
        .then((value) => restaurants.value = value.data);
  }, []);

  return Container(
      child: Column(
    children: [
      AddressPicker(),
      Expanded(
          child: ListView.builder(
              key: Key('RestaurantList'),
              itemCount: restaurants.value.length,
              itemBuilder: (context, index) {
                return RestaurantListItem(restaurants.value[index]);
              }))
    ],
  ));
}
