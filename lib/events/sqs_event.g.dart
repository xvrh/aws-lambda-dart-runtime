// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sqs_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AwsSQSEventRecord _$AwsSQSEventRecordFromJson(Map<String, dynamic> json) {
  return AwsSQSEventRecord(
    messageId: json['messageId'] as String?,
    body: json['body'] as String?,
    receiptHandle: json['receiptHandle'] as String?,
    attributes: json['attributes'] as Map<String, dynamic>?,
    messageAttributes: json['messageAttributes'] as Map<String, dynamic>?,
    md5OfBody: json['md5OfBody'] as String?,
    eventSource: json['eventSource'] as String?,
    eventSourceARN: json['eventSourceARN'] as String?,
    awsRegion: json['awsRegion'] as String?,
  );
}

Map<String, dynamic> _$AwsSQSEventRecordToJson(AwsSQSEventRecord instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('messageId', instance.messageId);
  writeNotNull('receiptHandle', instance.receiptHandle);
  writeNotNull('body', instance.body);
  writeNotNull('attributes', instance.attributes);
  writeNotNull('messageAttributes', instance.messageAttributes);
  writeNotNull('md5OfBody', instance.md5OfBody);
  writeNotNull('eventSource', instance.eventSource);
  writeNotNull('eventSourceARN', instance.eventSourceARN);
  writeNotNull('awsRegion', instance.awsRegion);
  return val;
}

AwsSQSEvent _$AwsSQSEventFromJson(Map<String, dynamic> json) {
  return AwsSQSEvent(
    records: (json['Records'] as List<dynamic>?)
        ?.map((e) => AwsSQSEventRecord.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$AwsSQSEventToJson(AwsSQSEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Records', instance.records);
  return val;
}
