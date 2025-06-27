import 'package:flutter/material.dart';
import 'constants.dart';

/// Reusable card widget
class ReusableCard extends StatelessWidget {
  const ReusableCard({
    required this.color,
    this.cardChild,
    this.onPress,
    super.key,
  });
  final Color color;
  final Widget? cardChild;
  final GestureTapCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}

/// Round icon button widget
class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    required this.onPressed,
    required this.icon,
    super.key,
  });
  final IconData icon;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      elevation: 6.0,
      child: Icon(icon),
    );
  }
}

/// Calculate button widget
class CalculateButton extends StatelessWidget {
  const CalculateButton({
    required this.buttonText,
    required this.onPressed,
    super.key,
  });

  final String buttonText;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom: 20.0),
        child: Center(child: Text(buttonText, style: kLargeButtonTextStyle)),
      ),
    );
  }
}
