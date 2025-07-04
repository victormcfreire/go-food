import 'package:flutter/material.dart';
import 'package:go_food/theme/colors.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({
    Key? key,
    this.width,
    this.height,
    this.espessuraBarra,
    this.cor,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double? espessuraBarra;
  final Color? cor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 70,
      height: height ?? 70,
      child: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(cor ?? primary),
          strokeWidth: espessuraBarra ?? 2.5,
        ),
      ),
    );
  }
}
