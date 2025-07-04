import 'package:flutter/material.dart';
import 'package:go_food/utils/consts.dart';

class LinhaValor extends StatelessWidget {
  final String label;
  final String? textoValor;
  final FontWeight? fontWeight;
  final Color? labelColor;
  final Color? textoValorColor;
  const LinhaValor({
    Key? key,
    required this.label,
    this.textoValor,
    this.labelColor,
    this.fontWeight,
    this.textoValorColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(paddingPadrao),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
                fontWeight: fontWeight ?? FontWeight.normal,
                color: labelColor ?? Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Text(
              textoValor ?? '',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: textoValorColor ?? Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
