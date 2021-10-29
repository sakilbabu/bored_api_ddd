import 'package:bored_ddd/domain/entities/activity.dart';
import 'package:bored_ddd/domain/repositories/activity_repository.dart';
import 'package:bored_ddd/infrastructure/data_source/activity_data_source.dart';

class ActivityRepositoryImpl implements ActivityRepository {
  final ActivityDataSource _activityDataSource;

  ActivityRepositoryImpl(this._activityDataSource);
  @override
  Future<Activity> getActivity() {
    return _activityDataSource.getActivity();
  }
}
