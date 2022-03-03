// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:boo_vie/app/theme/colors.dart';
import 'package:boo_vie/ui/views/login/widgets/forgot_password_text_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './login_view_model.dart';
import 'widgets/login_button_widget.dart';
import 'widgets/text_field_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => LoginViewModel(),
      onModelReady: (LoginViewModel model) async => await model.init(),
      builder: (BuildContext context, LoginViewModel model, Widget? child) => GestureDetector(
        onTap: () => model.removeFocus(),
        child: Scaffold(
          body: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            reverse: true,
            children: const [
              FlutterLogo(size: 120),
              TextFieldWidget(hintText: 'Email'),
              TextFieldWidget(hintText: 'Password'),
              ForgotPAsswordTextButton(),
              LoginButtonWidget(),
            ].reversed.toList(),
          ),
        ),
      ),
    );
  }
}
