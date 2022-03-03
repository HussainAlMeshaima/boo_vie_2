import 'package:boo_vie/app/theme/colors.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    required this.hintText,
    Key? key,
  }) : super(key: key);

  final String? hintText;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: TextField(
          showCursor: true,
          autocorrect: true,
          cursorColor: primaryRed,
          decoration: InputDecoration(
            fillColor: LightColors.gray,
            filled: true,
            hintText: hintText,
            isDense: true,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent, width: 0),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent, width: 0),
              borderRadius: BorderRadius.all(
                Radius.circular(17),
              ),
            ),
          ),
        ),
      );
}
