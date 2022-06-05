// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import 'home.dart' as _i2;
import 'home_wrapper.dart' as _i1;
import 'random_page.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeWrapper.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeWrapper());
    },
    Home.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.Home());
    },
    RandomPage.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RandomPage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig('/#redirect',
            path: '/', redirectTo: 'home', fullMatch: true),
        _i4.RouteConfig(HomeWrapper.name, path: 'home', children: [
          _i4.RouteConfig(Home.name, path: '', parent: HomeWrapper.name),
          _i4.RouteConfig(RandomPage.name,
              path: 'form', parent: HomeWrapper.name)
        ])
      ];
}

/// generated route for
/// [_i1.HomeWrapper]
class HomeWrapper extends _i4.PageRouteInfo<void> {
  const HomeWrapper({List<_i4.PageRouteInfo>? children})
      : super(HomeWrapper.name, path: 'home', initialChildren: children);

  static const String name = 'HomeWrapper';
}

/// generated route for
/// [_i2.Home]
class Home extends _i4.PageRouteInfo<void> {
  const Home() : super(Home.name, path: '');

  static const String name = 'Home';
}

/// generated route for
/// [_i3.RandomPage]
class RandomPage extends _i4.PageRouteInfo<void> {
  const RandomPage() : super(RandomPage.name, path: 'form');

  static const String name = 'RandomPage';
}
