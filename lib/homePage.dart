import 'package:delivery_customer/food/restaurantItem.dart';
import 'package:delivery_customer/order/ordersPage.dart';
import 'package:delivery_customer/util/appTextStyle.dart';
import 'package:delivery_customer/iocContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:openapi/model/basket.dart';
import 'package:openapi/model/restaurant.dart';

part 'homePage.g.dart';

@swidget
Widget addressPicker(BuildContext context) {
  return Container(
      padding: EdgeInsets.all(8),
      width: double.infinity,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Text("DELIVERING TO",
            style: AppTextStyle.header(context).copyWith(
                fontSize: 9, fontWeight: FontWeight.bold, color: Colors.red)),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("2312 Musselwhite Ave",
                style: AppTextStyle.sectionHeader(context)),
            Icon(Icons.keyboard_arrow_down, color: Colors.red, size: 16)
          ],
        )
      ]));
}

@swidget
Widget restaurantRating(BuildContext context, double rating) {
  return Row(
    children: [
      Text(rating.toStringAsFixed(1),
          style: AppTextStyle.sectionHeader(context)
              .copyWith(color: Colors.green, fontSize: 12.0)),
      Icon(Icons.star, color: Colors.green, size: 12)
    ],
  );
}

@swidget
Widget _basketButton(BuildContext context, Basket basket) {
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

class HomePage {
  GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();

  HomePage() {}
}

@hwidget
Widget customerHomePage(BuildContext context) {
  var foodPage = useMemoized(() => HomePage(), []);
  var ordersPage = useMemoized(() => HomePage(), []);
  var pages = [foodPage, ordersPage];
  var currentPageIndex = useState(0);

  var restaurants = useState<List<Restaurant>>([]);
  useEffect(() {
    IocContainer().basketService.fetch();
    IocContainer()
        .api
        .getRestaurantsApi()
        .restaurants()
        .then((value) => restaurants.value = value.data);
  }, []);

  // Subsribe to basket
  var basket =
      useStream(useMemoized(() => IocContainer().basketService.basket, []));
  var isBasketButtonVisible = basket.hasData && basket.data.items.length > 0;

  return Scaffold(
    body: WillPopScope(
        onWillPop: () async {
          var result =
              await pages[currentPageIndex.value].key.currentState.maybePop();
          return !result;
        },
        child: SafeArea(
          child: Stack(children: [
            IndexedStack(index: currentPageIndex.value, children: [
              Navigator(
                key: foodPage.key,
                onGenerateRoute: (settings) => MaterialPageRoute(
                  settings: settings,
                  builder: (context) => Container(
                      padding: EdgeInsets.only(top: 8),
                      child: Column(
                        children: [
                          AddressPicker(),
                          Expanded(
                              child: ListView.builder(
                                  itemCount: restaurants.value.length,
                                  itemBuilder: (context, index) {
                                    return RestaurantItem(
                                        restaurants.value[index]);
                                  }))
                        ],
                      )),
                ),
              ),
              Navigator(
                  key: ordersPage.key,
                  onGenerateRoute: (settings) => MaterialPageRoute(
                      settings: settings, builder: (context) => OrdersPage()))
            ]),
            isBasketButtonVisible
                ? Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      _BasketButton(basket.data),
                      Container(
                        height: 8,
                      )
                    ],
                  )
                : Container(),
          ]),
        )),
    bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (currentPageIndex.value == index) {
            // Reselecting the page - reset the state
            var currentPage = pages[index];
            currentPage.key.currentState.popUntil((route) => route.isFirst);
          } else {
            currentPageIndex.value = index;
          }
        },
        currentIndex: currentPageIndex.value,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.restaurant), title: Text("Food")),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text("Orders"))
        ]),
  );
}
