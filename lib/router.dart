import 'package:auto_route/auto_route.dart';
import 'package:bloc_route/home.dart';
import 'package:bloc_route/random_page.dart';
import 'package:bloc_route/home_wrapper.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: 'home',
      name: 'HomeWrapper',
      page: HomeWrapper,
      initial: true,
      children: [ 
        AutoRoute(path: '', name: 'Home', page: Home),
        AutoRoute(path: 'form', name: 'RandomPage', page: RandomPage),
      ],
    ),

  ]
)
class $AppRouter {}


// flutter packages pub run build_runner build
