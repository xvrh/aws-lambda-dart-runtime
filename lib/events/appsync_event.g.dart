// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appsync_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AwsAppSyncEvent _$AwsAppSyncEventFromJson(Map<String, dynamic> json) {
  return AwsAppSyncEvent(
    version: json['version'] as String?,
    operation: json['operation'] as String?,
    payload: json['payload'] as String?,
  );
}

Map<String, dynamic> _$AwsAppSyncEventToJson(AwsAppSyncEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('version', instance.version);
  writeNotNull('operation', instance.operation);
  writeNotNull('payload', instance.payload);
  return val;
}
