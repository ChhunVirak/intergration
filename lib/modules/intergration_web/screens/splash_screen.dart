import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:superapp_intergration/modules/intergration_web/controllers/contoller.dart';

import '../../../routers/router.gr.dart';

class SplashScreen extends StatefulWidget {
  final String? token;
  const SplashScreen({Key? key, @queryParam this.token}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final controller = Get.put(Controller());
  @override
  void initState() {
    controller.authApp(
        token: widget.token,
        onSuccess: () {
          debugPrint('Success Auth');
          controller.auth(true);
          context.pushRoute(const HomeScreen());
        },
        onFail: () {
          debugPrint('Fails Auth');
          context.pushRoute(DialogScreen(token: widget.token));
        });
    // Future.delayed(
    //   const Duration(seconds: 4),
    //   () {

    //     if (widget.token != null && widget.token!.toLowerCase() == 'virak') {
    //       controller.auth(true);
    //       context.pushRoute(const HomeScreen());
    //     } else {
    //       context.pushRoute(DialogScreen());
    //     }
    //   },
    // );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Shimmer.fromColors(
          baseColor: Colors.white24,
          highlightColor: Colors.black26,
          child: Text(
            'Splash Screen',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
  }
}
