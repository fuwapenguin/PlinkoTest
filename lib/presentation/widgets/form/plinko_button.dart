import 'package:flutter/material.dart';
import 'package:plinko_test/presentation/styling/plinko_theme.dart';
import 'package:plinko_test/presentation/styling/spacing_styles.dart';
import 'package:plinko_test/presentation/styling/text_style_context.dart';

class PlinkoButton extends StatelessWidget {
  const PlinkoButton({
    super.key,
    required this.label,
    required this.onpPressed,
    this.textStyle,
    this.type = ButtonType.filled,
    this.icon,
    this.borderRadius,
    this.active = false,
  });

  final String label;
  final Function onpPressed;
  final TextStyle? textStyle;
  final ButtonType type;
  final IconData? icon;
  final BorderRadiusGeometry? borderRadius;
  final bool active;

  @override
  Widget build(BuildContext context) {
    switch(type) {
      case ButtonType.filled:
        return FilledButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(SpacingStyles.mediumSpacing),
            ),
          ),
          onPressed: (){
            onpPressed();
          },
          child: Text(
            label,
            style: textStyle ?? context.textStyle.labelLarge,
          ),
        );
      case ButtonType.elevated:
        return ElevatedButton(
          onPressed: (){
            onpPressed();
          },
          child: Text(
            label,
            style: textStyle ?? context.textStyle.labelLarge,
          ),
        );
      case ButtonType.outlined:
        return OutlinedButton(
          onPressed: (){
            onpPressed();
          },
          child: Text(
            label,
            style: textStyle ?? context.textStyle.labelLarge,
          ),
        );
      case ButtonType.text:
        return TextButton(
          onPressed: (){
            onpPressed();
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            visualDensity: VisualDensity.compact
          ),
          child: Text(
            label,
            style: textStyle ?? context.textStyle.labelLarge?.copyWith(
              color: context.color.secondary,
            ),
          ),
        );
      case ButtonType.icon:
        return Container(
          decoration: BoxDecoration(
            borderRadius: borderRadius?? BorderRadius.circular(SpacingStyles.mediumSpacing),
            gradient: LinearGradient(
                colors: active? context.color.primaryGradient : context.color.cardGradient,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
            ),
          ),
          child: FilledButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius?? BorderRadius.circular(SpacingStyles.mediumSpacing),
              ),
            ),
            onPressed: (){
              onpPressed();
            },
            child: Icon(
              icon,
              size: 57,
              weight: 2,
              color: active? context.color.extraColor : context.color.onSurface,
            ),
          ),
        );
    }
  }
}

enum ButtonType {
  elevated,
  filled,
  outlined,
  text,
  icon,
}
