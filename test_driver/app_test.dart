import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Restaurants screen', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();

    tearDownAll(() {
      if (driver != null) {
        driver.close();
      }
    });

    test('is displayed', () async {
      var restaurantList = find.byValueKey('RestaurantList');
      await driver.waitFor(restaurantList);

      var restaurant = find.descendant(
          of: restaurantList,
          matching: find.byValueKey('RestaurantItem'),
          firstMatchOnly: true);
      await driver.waitFor(restaurant);
      await driver.tap(restaurant);

      var restaurantPage = find.byValueKey('RestaurantPage');
      await driver.waitFor(restaurantPage);

      print("Wait for dish");

      var dish = find.descendant(
          of: find.byValueKey('RestaurantPage'),
          matching: find.byValueKey('DishItem'),
          firstMatchOnly: true);
      await driver.waitFor(dish);
      await driver.tap(dish);

      print("Wait for Add");

      var addButton = find.byValueKey('AddButton');
      await driver.waitFor(addButton);
      await driver.tap(addButton);

      var basketButton = find.byType('BasketButton');
      await driver.waitFor(basketButton);
      await driver.tap(basketButton);

      var basketPage = find.byValueKey('BasketPage');
      await driver.waitFor(basketPage);

      var continueButton = find.byValueKey('ContinueButton');
      await driver.tap(continueButton);

      var checkoutPage = find.byValueKey('CheckoutPage');
      await driver.waitFor(checkoutPage);

      var orderButton = find.byValueKey('OrderButton');
      await driver.tap(orderButton);

      expect(true, true);
    });
  });
}
