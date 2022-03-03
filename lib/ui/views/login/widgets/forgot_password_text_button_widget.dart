import 'package:boo_vie/app/theme/colors.dart';
import 'package:flutter/material.dart';

class ForgotPAsswordTextButton extends StatelessWidget {
  const ForgotPAsswordTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Align(
        alignment: AlignmentDirectional.centerEnd,
        child: TextButton(
          onPressed: () {},
          style: ButtonStyle(
              overlayColor: MaterialStateColor.resolveWith((states) => primaryRed.withOpacity(.1)),
              foregroundColor: MaterialStateProperty.all(Colors.red)),
          child: const Text("Forgot Password"),
        ),
      );
}
