// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurantPage.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class _DeliveryDetails extends StatelessWidget {
  const _DeliveryDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => _deliveryDetails(_context);
}

class _DishItem extends StatelessWidget {
  const _DishItem(this.dish, this.restaurant, {Key key}) : super(key: key);

  final Dish dish;

  final Restaurant restaurant;

  @override
  Widget build(BuildContext _context) => _dishItem(_context, dish, restaurant);
}

class RestaurantPage extends HookWidget {
  const RestaurantPage(this.restaurant, {Key key}) : super(key: key);

  final Restaurant restaurant;

  @override
  Widget build(BuildContext _context) => restaurantPage(_context, restaurant);
}
