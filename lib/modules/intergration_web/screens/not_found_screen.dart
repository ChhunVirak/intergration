import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:superapp_intergration/modules/intergration_web/controllers/contoller.dart';
import 'package:superapp_intergration/routers/router.gr.dart';

class ErrorScreen extends StatelessWidget {
  final String? token;
  const ErrorScreen({
    Key? key,
    @queryParam this.token,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Controller());
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.indigo[900],
              borderRadius: BorderRadius.circular(20)),
          height: 400,
          width: 400,
          child: Column(
            children: [
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    alignment: Alignment.center,
                    child: const Text('Fail Authorization'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        context.popRoute().then((value) {
                          controller.authApp(
                              token: token,
                              onSuccess: () {
                                debugPrint('Success Auth');
                                controller.auth(true);
                                context.pushRoute(const HomeScreen());
                              },
                              onFail: () {
                                debugPrint('Fails Auth');
                                context.pushRoute(DialogScreen(token: token));
                              });
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: const BoxDecoration(color: Colors.white),
                        alignment: Alignment.center,
                        child: const Text('Try Again'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        context.pushRoute(const HomeScreen());
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: const BoxDecoration(color: Colors.white),
                        alignment: Alignment.center,
                        child: const Text('Log in as Guest'),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
