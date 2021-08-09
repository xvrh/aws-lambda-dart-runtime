// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alb_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AwsALBEvent _$AwsALBEventFromJson(Map<String, dynamic> json) {
  return AwsALBEvent(
    context: json['context'] == null
        ? null
        : AwsALBEventContext.fromJson(json['context'] as Map<String, dynamic>),
    httpMethod: json['httpMethod'] as String?,
    path: json['path'] as String?,
    headers: json['headers'] as Map<String, dynamic>?,
    queryStringParameters:
        json['queryStringParameters'] as Map<String, dynamic>?,
    body: json['body'] as String?,
    isBase64Encoded: json['isBase64Encoded'] as bool?,
  );
}

Map<String, dynamic> _$AwsALBEventToJson(AwsALBEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('context', instance.context);
  writeNotNull('httpMethod', instance.httpMethod);
  writeNotNull('path', instance.path);
  writeNotNull('headers', instance.headers);
  writeNotNull('queryStringParameters', instance.queryStringParameters);
  writeNotNull('body', instance.body);
  writeNotNull('isBase64Encoded',
      const PermissiveBoolConverter().toJson(instance.isBase64Encoded));
  return val;
}

AwsALBEventContext _$AwsALBEventContextFromJson(Map<String, dynamic> json) {
  return AwsALBEventContext();
}

Map<String, dynamic> _$AwsALBEventContextToJson(AwsALBEventContext instance) =>
    <String, dynamic>{};
