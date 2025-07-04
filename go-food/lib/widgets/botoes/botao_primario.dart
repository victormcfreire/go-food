import 'package:flutter/material.dart';
import 'package:go_food/theme/colors.dart';

class BotaoPrimario extends StatelessWidget {
  final String label;
  final Size? size;
  final void Function()? onPressed;
  const BotaoPrimario({
    Key? key,
    required this.label,
    this.size,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        fixedSize: size ?? const Size(230, 30),
      ),
      child: Text(
        label,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
