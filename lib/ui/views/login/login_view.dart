import 'package:boo_vie/app/services/breakpoint_service.dart';
import 'package:boo_vie/ui/views/login/sizes/xs.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './login_view_model.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BreakpointBuilder(
        builder: (context, screen) => ViewModelBuilder<LoginViewModel>.reactive(
          viewModelBuilder: () => LoginViewModel(screen),
          onModelReady: (LoginViewModel model) async => await model.init(),
          builder: (BuildContext context, LoginViewModel model, Widget? child) {
            switch (model.screen.window) {
              case WindowSize.xSmall:
                return LoginViewXSmall(model);
              default:
                return Scaffold(
                  body: Center(child: Text("TODO " + model.screen.window.toString())),
                );
            }
          },
        ),
      );
}
