import 'package:flutter/material.dart';

class Divisor extends StatelessWidget {
  final double? espacamentoVertical;
  final double? alturaLinha;
  final double? margemEsquerda;
  final double? margemDireita;
  final Color? corLinha;
  const Divisor({
    Key? key,
    this.espacamentoVertical,
    this.alturaLinha,
    this.corLinha,
    this.margemEsquerda,
    this.margemDireita,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: espacamentoVertical ?? 10.0,
      child: Center(
        child: Container(
          margin: EdgeInsetsDirectional.only(
            start: margemEsquerda ?? 0.0,
            end: margemDireita ?? 0.0,
          ),
          height: alturaLinha ?? 1.0,
          color: corLinha ?? Colors.grey[300],
        ),
      ),
    );
  }
}
