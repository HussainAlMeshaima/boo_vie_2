import 'package:boo_vie/app/theme/colors.dart';
import 'package:flutter/material.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final Function onPressed;

  @override
  Widget build(BuildContext context) => Container(
    width: MediaQuery.of(context).size.width,
    margin: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
    child: ElevatedButton(
      onPressed: () => onPressed(),
      style: ElevatedButton.styleFrom(
        primary: primaryRed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        padding: const EdgeInsets.all(17),
        shadowColor: primaryRed,
      ),
      child: const Text(
        'LOG IN',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
      ),
    ),
  );
}
