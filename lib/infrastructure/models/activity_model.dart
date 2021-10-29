import 'dart:convert';

import 'package:bored_ddd/domain/entities/activity.dart';

class ActivityModel extends Activity {
  ActivityModel({
    String? activity,
    String? error,
    String? type,
    int? participants,
    num? price,
    String? link,
  }) : super(
          activity: activity,
          error: error,
          type: type,
          link: link,
          participants: participants,
          price: price,
        );
  factory ActivityModel.fromJson(String str) =>
      ActivityModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ActivityModel.fromMap(Map<String, dynamic> json) => ActivityModel(
        activity: json["activity"],
        error: json["error"],
        type: json["type"],
        participants: json["participants"],
        price: json["price"],
        link: json["link"],
      );

  Map<String, dynamic> toMap() => {
        "activity": activity,
        "error": error,
        "type": type,
        "participants": participants,
        "price": price,
        "link": link,
      };
}
