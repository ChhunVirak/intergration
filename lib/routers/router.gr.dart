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

import '../modules/intergration_web/screens/home_screen.dart' as _i2;
import '../modules/intergration_web/screens/not_found_screen.dart' as _i3;
import '../modules/intergration_web/screens/splash_screen.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<SplashScreenArgs>(
          orElse: () =>
              SplashScreenArgs(token: queryParams.optString('token')));
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.SplashScreen(key: args.key, token: args.token));
    },
    HomeScreen.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.HomeScreen(),
          transitionsBuilder: _i4.TransitionsBuilders.noTransition,
          opaque: true,
          barrierDismissible: false);
    },
    DialogScreen.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<DialogScreenArgs>(
          orElse: () =>
              DialogScreenArgs(token: queryParams.optString('token')));
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: _i3.ErrorScreen(key: args.key, token: args.token),
          transitionsBuilder: _i4.TransitionsBuilders.noTransition,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig('/#redirect',
            path: '/', redirectTo: '/sso', fullMatch: true),
        _i4.RouteConfig(SplashScreen.name, path: '/sso'),
        _i4.RouteConfig(HomeScreen.name, path: '/home'),
        _i4.RouteConfig(DialogScreen.name, path: '/notfounded')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i4.PageRouteInfo<SplashScreenArgs> {
  SplashScreen({_i5.Key? key, String? token})
      : super(SplashScreen.name,
            path: '/sso',
            args: SplashScreenArgs(key: key, token: token),
            rawQueryParams: {'token': token});

  static const String name = 'SplashScreen';
}

class SplashScreenArgs {
  const SplashScreenArgs({this.key, this.token});

  final _i5.Key? key;

  final String? token;

  @override
  String toString() {
    return 'SplashScreenArgs{key: $key, token: $token}';
  }
}

/// generated route for
/// [_i2.HomeScreen]
class HomeScreen extends _i4.PageRouteInfo<void> {
  const HomeScreen() : super(HomeScreen.name, path: '/home');

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i3.ErrorScreen]
class DialogScreen extends _i4.PageRouteInfo<DialogScreenArgs> {
  DialogScreen({_i5.Key? key, String? token})
      : super(DialogScreen.name,
            path: '/notfounded',
            args: DialogScreenArgs(key: key, token: token),
            rawQueryParams: {'token': token});

  static const String name = 'DialogScreen';
}

class DialogScreenArgs {
  const DialogScreenArgs({this.key, this.token});

  final _i5.Key? key;

  final String? token;

  @override
  String toString() {
    return 'DialogScreenArgs{key: $key, token: $token}';
  }
}
