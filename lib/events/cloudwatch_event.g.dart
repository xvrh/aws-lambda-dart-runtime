// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cloudwatch_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AwsCloudwatchEvent _$AwsCloudwatchEventFromJson(Map<String, dynamic> json) {
  return AwsCloudwatchEvent(
    resources:
        (json['resources'] as List<dynamic>?)?.map((e) => e as String).toList(),
    region: json['region'] as String?,
    id: json['id'] as String?,
    source: json['source'] as String?,
    account: json['account'] as String?,
    detailType: json['detail-type'] as String?,
    detail: json['detail'] as Map<String, dynamic>?,
    time: json['time'] == null ? null : DateTime.parse(json['time'] as String),
  );
}

Map<String, dynamic> _$AwsCloudwatchEventToJson(AwsCloudwatchEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resources', instance.resources);
  writeNotNull('region', instance.region);
  writeNotNull('id', instance.id);
  writeNotNull('source', instance.source);
  writeNotNull('account', instance.account);
  writeNotNull('detail-type', instance.detailType);
  writeNotNull('detail', instance.detail);
  writeNotNull('time', instance.time?.toIso8601String());
  return val;
}
