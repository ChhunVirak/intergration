import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:superapp_intergration/helpers/api_base_helper.dart';
import 'package:superapp_intergration/modules/intergration_web/models/auth_model.dart';

class Controller extends GetxController {
  final auth = false.obs;
  final z1Token = 'NGRmODVmMWYtYzc2ZS00NTU0LTllMmMtNzJjOTVjMjZkMTBh';

  final apibaseHelper = ApiBaseHelper();
  var authModel = AuthAPI();

  Future authApp(
      {VoidCallback? onSuccess, VoidCallback? onFail, String? token}) async {
    await apibaseHelper.onNetworkRequesting(
        urlFull:
            'https://sub.flexitechnology.com/api/mobile/v1/auth-customer/login-with-token',
        methode: METHODE.post,
        token: token,
        isAuthorize: false,
        body: {}).then((response) {
      try {
        authModel = AuthAPI.fromJson(response);

        if (authModel.message == null &&
            authModel.accessToken != null &&
            authModel.accessToken != '' &&
            onSuccess != null) {
          onSuccess();
        } else if (authModel.message != null && authModel.message != '') {
          if (onFail != null) {
            onFail();
          }
        }
      } catch (e) {
        if (onFail != null) {
          onFail();
        }
      }
    }).onError((ErrorModel error, stackTrace) {
      if (onFail != null) {
        onFail();
      }
    });
  }

  // @override
  // void onInit() {
  //   authApp();
  //   super.onInit();
  // }
}
