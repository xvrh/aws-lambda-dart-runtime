// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kinesis_data_stream_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AwsKinesisDataStream _$AwsKinesisDataStreamFromJson(Map<String, dynamic> json) {
  return AwsKinesisDataStream(
    partitionKey: json['partitionKey'] as String?,
    kinesisSchemaVersion: json['kinesisSchemaVersion'] as String?,
    data: json['data'] as String?,
    sequenceNumber: json['sequenceNumber'] as String?,
    approximateArrivalTimestamp: const PermissiveNullableIntConverter()
        .fromJson(json['approximateArrivalTimestamp']),
  );
}

Map<String, dynamic> _$AwsKinesisDataStreamToJson(
    AwsKinesisDataStream instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('partitionKey', instance.partitionKey);
  writeNotNull('kinesisSchemaVersion', instance.kinesisSchemaVersion);
  writeNotNull('data', instance.data);
  writeNotNull('sequenceNumber', instance.sequenceNumber);
  writeNotNull(
      'approximateArrivalTimestamp',
      const PermissiveNullableIntConverter()
          .toJson(instance.approximateArrivalTimestamp));
  return val;
}

AwsKinesisDataStreamRecord _$AwsKinesisDataStreamRecordFromJson(
    Map<String, dynamic> json) {
  return AwsKinesisDataStreamRecord(
    kinesis: json['kinesis'] == null
        ? null
        : AwsKinesisDataStream.fromJson(
            json['kinesis'] as Map<String, dynamic>),
    invokeIdentityArn: json['invokeIdentityArn'] as String?,
    eventName: json['eventName'] as String?,
    eventID: json['eventID'] as String?,
    eventSource: json['eventSource'] as String?,
    eventVersion: json['eventVersion'] as String?,
    eventSourceARN: json['eventSourceARN'] as String?,
    awsRegion: json['awsRegion'] as String?,
  );
}

Map<String, dynamic> _$AwsKinesisDataStreamRecordToJson(
    AwsKinesisDataStreamRecord instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('kinesis', instance.kinesis);
  writeNotNull('eventSource', instance.eventSource);
  writeNotNull('eventID', instance.eventID);
  writeNotNull('eventVersion', instance.eventVersion);
  writeNotNull('eventName', instance.eventName);
  writeNotNull('eventSourceARN', instance.eventSourceARN);
  writeNotNull('invokeIdentityArn', instance.invokeIdentityArn);
  writeNotNull('awsRegion', instance.awsRegion);
  return val;
}

AwsKinesisDataStreamEvent _$AwsKinesisDataStreamEventFromJson(
    Map<String, dynamic> json) {
  return AwsKinesisDataStreamEvent(
    records: (json['Records'] as List<dynamic>?)
        ?.map((e) =>
            AwsKinesisDataStreamRecord.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$AwsKinesisDataStreamEventToJson(
    AwsKinesisDataStreamEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Records', instance.records);
  return val;
}
