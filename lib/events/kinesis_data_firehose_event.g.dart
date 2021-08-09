// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kinesis_data_firehose_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AwsKinesisFirehoseData _$AwsKinesisFirehoseDataFromJson(
    Map<String, dynamic> json) {
  return AwsKinesisFirehoseData(
    recordId: json['recordId'] as String?,
    data: json['data'] as String?,
    approximateArrivalTimestamp: const PermissiveNullableIntConverter()
        .fromJson(json['approximateArrivalTimestamp']),
  );
}

Map<String, dynamic> _$AwsKinesisFirehoseDataToJson(
    AwsKinesisFirehoseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('recordId', instance.recordId);
  writeNotNull(
      'approximateArrivalTimestamp',
      const PermissiveNullableIntConverter()
          .toJson(instance.approximateArrivalTimestamp));
  writeNotNull('data', instance.data);
  return val;
}

AwsKinesisFirehoseDataEvent _$AwsKinesisFirehoseDataEventFromJson(
    Map<String, dynamic> json) {
  return AwsKinesisFirehoseDataEvent(
    records: (json['records'] as List<dynamic>?)
        ?.map((e) => AwsKinesisFirehoseData.fromJson(e as Map<String, dynamic>))
        .toList(),
    invocationId: json['invocationId'] as String?,
    deliveryStreamArn: json['deliveryStreamArn'] as String?,
    region: json['region'] as String?,
  );
}

Map<String, dynamic> _$AwsKinesisFirehoseDataEventToJson(
    AwsKinesisFirehoseDataEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('invocationId', instance.invocationId);
  writeNotNull('deliveryStreamArn', instance.deliveryStreamArn);
  writeNotNull('region', instance.region);
  writeNotNull('records', instance.records);
  return val;
}
