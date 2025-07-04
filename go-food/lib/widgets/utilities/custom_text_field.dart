import 'package:flutter/material.dart';
import 'package:go_food/theme/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.textNode,
    required this.textController,
  }) : super(key: key);

  final FocusNode textNode;
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: 100,
      focusNode: textNode,
      maxLines: 3,
      controller: textController,
      decoration: InputDecoration(
        hintText: 'Ex: Sem cebola, Sem açúcar',
        label: const Text(
          'Observações',
          style: TextStyle(
            color: grey,
          ),
        ),
        alignLabelWithHint: true,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: grey, width: 2.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(12.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: secondary, width: 2.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      cursorColor: secondary,
    );
  }
}
