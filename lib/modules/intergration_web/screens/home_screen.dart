import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:superapp_intergration/modules/intergration_web/controllers/contoller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        automaticallyImplyLeading: false,
        title: const Text('HomeScreen'),
      ),
      body: Center(
        child: Text(
          controller.auth.value ? 'Authorized' : 'Unauthorized',
          style: Theme.of(context)
              .textTheme
              .displayLarge!
              .copyWith(fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
