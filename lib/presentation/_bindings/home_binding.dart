import 'package:bored_ddd/application/use_cases/get_activity_usecase.dart';
import 'package:bored_ddd/domain/repositories/activity_repository.dart';
import 'package:bored_ddd/infrastructure/data_source/activity_data_source.dart';
import 'package:bored_ddd/infrastructure/repositories/activity_repository.dart';
import 'package:bored_ddd/presentation/controllers/home_page_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  final find = Get.find;
  @override
  void dependencies() {
    Get.lazyPut<ActivityDataSource>(() => ActivityDataSourceImpl());
    Get.lazyPut<ActivityRepository>(() => ActivityRepositoryImpl(find()));
    Get.lazyPut(() => GetActivityUseCase(find()));
    Get.lazyPut(() => HomePageController(find()));
  }
}
