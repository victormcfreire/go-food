import 'package:flutter/material.dart';

class PlaceholderImagem extends StatelessWidget {
  const PlaceholderImagem({
    Key? key,
    required this.imagem,
    required this.placeholder,
    this.fit,
    this.height,
    this.width,
  }) : super(key: key);
  final ImageProvider imagem;
  final Widget placeholder;
  final BoxFit? fit;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Image(
      image: imagem,
      fit: fit,
      height: height,
      width: width,
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded) {
          return child;
        } else {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: frame != null ? child : placeholder,
          );
        }
      },
      errorBuilder:
          (BuildContext context, Object exception, StackTrace? stackTrace) {
        return Image.asset(
          "assets/images/imagem_indisponivel.jpg",
          height: 75,
          width: 75,
          fit: BoxFit.cover,
        );
      },
    );
  }
}
