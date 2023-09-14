import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

class ServerTimestampConverter implements JsonConverter<DateTime?, Object?> {
  const ServerTimestampConverter();

  @override
  DateTime? fromJson(Object? json) {
    if (json is Timestamp) {
      return json.toDate();
    }
    return null;
  }

  @override
  Object? toJson(DateTime? object) {
    return FieldValue.serverTimestamp(); // Always return server timestamp
  }
}
