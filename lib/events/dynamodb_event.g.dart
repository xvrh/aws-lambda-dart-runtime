// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamodb_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AwsDynamoDBUpdateRecord _$AwsDynamoDBUpdateRecordFromJson(
    Map<String, dynamic> json) {
  return AwsDynamoDBUpdateRecord(
    keys: json['Keys'] as Map<String, dynamic>?,
    oldImage: json['NewImage'] as Map<String, dynamic>?,
    newImage: json['OldImage'] as Map<String, dynamic>?,
  );
}

Map<String, dynamic> _$AwsDynamoDBUpdateRecordToJson(
    AwsDynamoDBUpdateRecord instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Keys', instance.keys);
  writeNotNull('NewImage', instance.oldImage);
  writeNotNull('OldImage', instance.newImage);
  return val;
}

AwsDynamoDBUpdateEventRecord _$AwsDynamoDBUpdateEventRecordFromJson(
    Map<String, dynamic> json) {
  return AwsDynamoDBUpdateEventRecord(
    eventId: json['eventId'] as String?,
    eventName: json['eventName'] as String?,
    eventSource: json['eventSource'] as String?,
    eventVersion: json['eventVersion'] as String?,
    awsRegion: json['awsRegion'] as String?,
    eventSourceARN: json['eventSourceARN'] as String?,
  );
}

Map<String, dynamic> _$AwsDynamoDBUpdateEventRecordToJson(
    AwsDynamoDBUpdateEventRecord instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventId', instance.eventId);
  writeNotNull('eventName', instance.eventName);
  writeNotNull('eventSource', instance.eventSource);
  writeNotNull('eventVersion', instance.eventVersion);
  writeNotNull('awsRegion', instance.awsRegion);
  writeNotNull('eventSourceARN', instance.eventSourceARN);
  return val;
}

AwsDynamoDBUpdateEvent _$AwsDynamoDBUpdateEventFromJson(
    Map<String, dynamic> json) {
  return AwsDynamoDBUpdateEvent(
    records: (json['Records'] as List<dynamic>?)
        ?.map((e) =>
            AwsDynamoDBUpdateEventRecord.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$AwsDynamoDBUpdateEventToJson(
    AwsDynamoDBUpdateEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Records', instance.records);
  return val;
}
