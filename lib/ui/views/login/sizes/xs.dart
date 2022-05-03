import 'package:boo_vie/ui/views/login/login_view_model.dart';
import 'package:boo_vie/ui/views/login/widgets/forgot_password_text_button_widget.dart';
import 'package:boo_vie/ui/views/login/widgets/login_button_widget.dart';
import 'package:boo_vie/ui/views/login/widgets/sign_up_button_widget.dart';
import 'package:flutter/material.dart';

import '../../../widgets/logo_widget.dart';
import '../widgets/text_field_widget.dart';

class LoginViewXSmall extends StatelessWidget {
  const LoginViewXSmall(this.model, {Key? key}) : super(key: key);

  final LoginViewModel model;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => model.removeFocus(),
        child: Scaffold(
          body: Container(
            child: MediaQuery.of(context).orientation == Orientation.portrait
                ? ListView(
                    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                    padding: EdgeInsets.symmetric(horizontal: model.screen.gutters),
                    children: [
                      const SizedBox(height: 80),
                      const BooVieLogoWidget(height: 120, key: Key("booViLogo")),
                      const SizedBox(height: 50),
                      TextFieldWidget(controller: model.emailController, hintText: 'Email'),
                      TextFieldWidget(controller: model.passwordController, hintText: 'Password'),
                      const ForgotPasswordTextButton(),
                      LoginButtonWidget(onPressed: () => model.login(context: context)),
                      const SizedBox(height: 10),
                      SignUpButtonWidget(onPressed: () {}),
                    ],
                  )
                : ListView(
                    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                    children: [
                      TextFieldWidget(controller: model.emailController, hintText: 'Email'),
                      TextFieldWidget(controller: model.passwordController, hintText: 'Password'),
                      const ForgotPasswordTextButton(),
                      const SizedBox(height: 10),
                      LoginButtonWidget(onPressed: () => model.login(context: context)),
                      const SizedBox(height: 10),
                      SignUpButtonWidget(onPressed: () {}),
                    ],
                  ),
          ),
        ),
      );
}
