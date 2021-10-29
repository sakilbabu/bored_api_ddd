import 'package:bored_ddd/domain/entities/activity.dart';

abstract class ActivityRepository {
  Future<Activity> getActivity();
}
