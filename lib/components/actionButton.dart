import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'actionButton.g.dart';

abstract class ButtonState {
  factory ButtonState.normal() => NormalButtonState();
  factory ButtonState.loading() => LoadingButtonState();
  factory ButtonState.disabled() => DisabledButtonState();
}

class NormalButtonState implements ButtonState {}

class LoadingButtonState implements ButtonState {}

class DisabledButtonState implements ButtonState {}

abstract class ActionButtonStyle {
  factory ActionButtonStyle.primary() => PrimaryButtonStyle();

  factory ActionButtonStyle.secondary() => SecondaryButtonStyle();
}

class PrimaryButtonStyle implements ActionButtonStyle {}

class SecondaryButtonStyle implements ActionButtonStyle {}

@swidget
Widget actionButton(BuildContext context,
    {ButtonState state,
    ActionButtonStyle style,
    Text label,
    Function onPressed}) {
  final ButtonThemeData buttonTheme = ButtonTheme.of(context);
  final theme = Theme.of(context);

  var currentState = state ?? ButtonState.normal();
  var currentStyle = style ?? ActionButtonStyle.primary();

  Color fillColor;
  Color textColor;
  switch (currentStyle.runtimeType) {
    case PrimaryButtonStyle:
      fillColor = buttonTheme.colorScheme.primary;
      textColor = buttonTheme.colorScheme.onPrimary;
      break;
    case SecondaryButtonStyle:
      fillColor = null;
      textColor = buttonTheme.colorScheme.secondary;
      break;
    default:
      throw Exception("Unknown buttonStyle: $currentStyle");
  }

  if (currentState is NormalButtonState ||
      currentState is DisabledButtonState) {
    return RawMaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
        fillColor: fillColor,
        textStyle: theme.textTheme.button.copyWith(color: textColor),
        child: label,
        onPressed: currentState is DisabledButtonState ? null : onPressed);
  }
  if (currentState is LoadingButtonState) {
    return RawMaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
        fillColor: fillColor,
        onPressed: null,
        child: SizedBox(
            width: 16,
            height: 16,
            child: CircularProgressIndicator(
              backgroundColor: null,
              valueColor: AlwaysStoppedAnimation<Color>(textColor),
              strokeWidth: 4,
            )));
  }
}
