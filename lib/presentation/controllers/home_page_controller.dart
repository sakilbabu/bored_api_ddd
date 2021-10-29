import 'package:bored_ddd/application/dtos/requests/empty_request.dart';
import 'package:bored_ddd/application/exceptions/api_exception.dart';
import 'package:bored_ddd/application/exceptions/network_exception.dart';
import 'package:bored_ddd/application/use_cases/get_activity_usecase.dart';
import 'package:bored_ddd/domain/entities/activity.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  final GetActivityUseCase _getActivityUseCase;

  final activity = Rxn<Activity>();

  HomePageController(this._getActivityUseCase);
  getActivity() async {
    try {
      final response = await _getActivityUseCase.call(EmptyRequest());
      if (response.error != null) {
        Get.defaultDialog(content: Text(response.error!));
      } else {
        activity.value = response;
      }
    } on NetworkException catch (e) {
      Get.defaultDialog(content: Text(e.message));
    } on ApiException catch (e) {
      Get.defaultDialog(content: Text(e.code.toString() + e.message));
    }
  }
}
