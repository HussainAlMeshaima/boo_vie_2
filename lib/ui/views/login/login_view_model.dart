import 'package:boo_vie/app/core/custom_base_view_model.dart';
import 'package:boo_vie/app/utils/logger.dart';
import 'package:flutter/material.dart';

import '../../../app/services/breakpoint_service.dart';

class LoginViewModel extends CustomBaseViewModel {
  LoginViewModel(BreakpointService screen) {
    _screen = screen;
  }

  Future<void> init() async {
    getLogger("LoginViewModel");
  }

  Future<void> login({required BuildContext context}) async {
    String? error = errors();

    if (error != null) {
      showSnackBar(context, message: error);
    }

    //TODO login
  }

  Future<void> forgotPassword() async {
    //TODO
  }

  bool validEmail() =>
      RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(_emailController.text);

  String? errors() {
    if (_emailController.text == '') {
      return 'Email Missing.';
    }

    if (!validEmail()) {
      return 'Invalid Email, Please enter a valid email.';
    }

    if (_passwordController.text == '') {
      return 'Password Missing.';
    }

    if (_passwordController.text.length < 8) {
      return 'Password must be 8 characters or longer';
    }

    return null;
  }

  late BreakpointService _screen;
  BreakpointService get screen => _screen;

  final TextEditingController _emailController = TextEditingController();
  TextEditingController get emailController => _emailController;

  final TextEditingController _passwordController = TextEditingController();
  TextEditingController get passwordController => _passwordController;
}
