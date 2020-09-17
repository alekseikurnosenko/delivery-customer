import 'package:delivery_customer/basket/basketButton.dart';
import 'package:delivery_customer/catalog/restaurantsListPage.dart';
import 'package:delivery_customer/iocContainer.dart';
import 'package:delivery_customer/order/ordersPage.dart';
import 'package:delivery_customer/util/appTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:openapi/model/basket.dart';
import 'package:openapi/model/restaurant.dart';
import 'package:provider/provider.dart';

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

class HomePage {
  GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();

  HomePage() {}
}

@hwidget
Widget customerHomePage(BuildContext context) {
  var basketService = Provider.of<IocContainer>(context).basketService;
  var foodPage = useMemoized(() => HomePage(), []);
  var ordersPage = useMemoized(() => HomePage(), []);
  var pages = [foodPage, ordersPage];
  var currentPageIndex = useState(0);

  useEffect(() {
    basketService.fetch();
  }, []);

  // Subsribe to basket
  var basket = useStream(useMemoized(() => basketService.basket, []));
  var isBasketButtonVisible = basket.hasData && basket.data.items.length > 0;

  return Scaffold(
    body: WillPopScope(
      onWillPop: () async {
        var result =
            await pages[currentPageIndex.value].key.currentState.maybePop();
        return !result;
      },
      child: Stack(children: [
        IndexedStack(index: currentPageIndex.value, children: [
          SafeArea(
              child: Navigator(
            key: foodPage.key,
            onGenerateRoute: (settings) => MaterialPageRoute(
              settings: settings,
              builder: (context) => RestaurantsListPage(),
            ),
          )),
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
                  BasketButton(basket.data),
                  Container(
                    height: 8,
                  )
                ],
              )
            : Container(),
      ]),
    ),
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
