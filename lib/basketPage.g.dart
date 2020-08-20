// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basketPage.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class _BasketItem extends StatelessWidget {
  const _BasketItem(this.basketItem, this.onDeleteClick, {Key key})
      : super(key: key);

  final BasketItem basketItem;

  final Function onDeleteClick;

  @override
  Widget build(BuildContext _context) =>
      _basketItem(_context, basketItem, onDeleteClick);
}

class _ContinueButton extends StatelessWidget {
  const _ContinueButton(this.basket, {Key key}) : super(key: key);

  final Basket basket;

  @override
  Widget build(BuildContext _context) => _continueButton(_context, basket);
}

class BasketPage extends HookWidget {
  const BasketPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => basketPage(_context);
}
