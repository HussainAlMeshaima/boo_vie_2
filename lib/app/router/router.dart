import 'package:auto_route/auto_route.dart';

import 'package:boo_vie/ui/views/home/home_view.dart';
import 'package:boo_vie/ui/views/login/login_view.dart';
import 'package:boo_vie/ui/views/startup/startup_view.dart';

export './router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: "View,Route",
  routes: <AutoRoute>[
    AdaptiveRoute(page: StartupView, initial: true),
    AdaptiveRoute(page: LoginView),
    AdaptiveRoute(page: HomeView),
  ],
)
class $BooVieRouter {}
