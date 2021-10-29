import 'package:bored_ddd/application/exceptions/api_exception.dart';
import 'package:bored_ddd/application/exceptions/network_exception.dart';
import 'package:bored_ddd/infrastructure/models/activity_model.dart';
import 'package:get/get.dart';

abstract class ActivityDataSource {
  Future<ActivityModel> getActivity();
}

class ActivityDataSourceImpl extends GetConnect implements ActivityDataSource {
  @override
  void onInit() {
    super.onInit();
    baseUrl = "https://www.boredapi.com/api/";
  }

  @override
  Future<ActivityModel> getActivity() async {
    try {
      final response = await get(
        "activity/",
        // decoder: (data) => ActivityModel.fromMap(data),
      );
      if (response.isOk) {
        return ActivityModel.fromJson(response.bodyString!);
      }
      // return Future.error("Network error occurred");
      throw ApiException(
        message: response.statusText!,
        code: response.statusCode!,
      );
    } catch (e) {
      throw NetworkException(message: "A Network Error Occurred");
    }
  }
  // return response.body!;
}
