import 'package:flutter/material.dart';
import 'package:go_food/theme/colors.dart';

class BotaoSecundario extends StatelessWidget {
  final String label;
  final Size? size;
  final Color? labelColor;
  final void Function()? onPressed;
  const BotaoSecundario({
    Key? key,
    required this.label,
    this.size,
    required this.onPressed,
    this.labelColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        overlayColor: WidgetStateProperty.all(primary.withAlpha(50)),
        foregroundColor: WidgetStateProperty.all(secondary),
        fixedSize: WidgetStateProperty.all(size ?? const Size(170, 25)),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: labelColor ?? primary,
        ),
      ),
    );
  }
}
