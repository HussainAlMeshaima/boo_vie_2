import 'package:boo_vie/app/theme/colors.dart';
import 'package:flutter/material.dart';

class SignUpButtonWidget extends StatelessWidget {
  const SignUpButtonWidget({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final Function onPressed;

  @override
  Widget build(BuildContext context) => Container(
    width: MediaQuery.of(context).size.width,
    margin: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
    child: OutlinedButton(
      onPressed: () => onPressed(),
      style: ElevatedButton.styleFrom(
        onPrimary: primaryRed,
        side: const BorderSide(color: primaryRed, width: 3),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        padding: const EdgeInsets.all(17),
      ),
      child: const Text(
        'SIGN UP',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
      ),
    ),
  );
}
