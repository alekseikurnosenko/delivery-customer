// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkoutPage.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class _PaymentMethod extends StatelessWidget {
  const _PaymentMethod(this.type, this.isChecked, this.onClicked, {Key key})
      : super(key: key);

  final String type;

  final bool isChecked;

  final Function onClicked;

  @override
  Widget build(BuildContext _context) =>
      _paymentMethod(_context, type, isChecked, onClicked);
}

class _PaymentSection extends HookWidget {
  const _PaymentSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => _paymentSection(_context);
}

class _DeliveryDetails extends StatelessWidget {
  const _DeliveryDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => _deliveryDetails(_context);
}

class CheckoutPage extends HookWidget {
  const CheckoutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => checkoutPage(_context);
}
