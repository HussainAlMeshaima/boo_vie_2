import 'package:boo_vie/ui/widgets/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './startup_view_model.dart';

class StartupView extends StatefulWidget {
  @override
  _StartupViewState createState() => _StartupViewState();
}

class _StartupViewState extends State<StartupView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      viewModelBuilder: () => StartupViewModel(),
      onModelReady: (StartupViewModel model) async => await model.init(),
      builder: (BuildContext context, StartupViewModel model, Widget? child) => Scaffold(
        body: Center(
          child: ListView(
            children: const <Widget>[
              SizedBox(
                height: 700,
              ),
              BooVieLogoWidget(height: 0, key: Key("booViLogo")),
            ],
          ),
        ),
      ),
    );
  }
}
