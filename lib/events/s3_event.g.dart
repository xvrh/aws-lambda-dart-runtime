// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AwsS3Event _$AwsS3EventFromJson(Map<String, dynamic> json) {
  return AwsS3Event(
    records: (json['Records'] as List<dynamic>?)
        ?.map((e) => AwsS3EventRecord.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$AwsS3EventToJson(AwsS3Event instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Records', instance.records);
  return val;
}

AwsS3EventRecord _$AwsS3EventRecordFromJson(Map<String, dynamic> json) {
  return AwsS3EventRecord(
    eventName: json['eventName'] as String?,
    eventSource: json['eventSource'] as String?,
    awsRegion: json['awsRegion'] as String?,
    eventTime: json['eventTime'] == null
        ? null
        : DateTime.parse(json['eventTime'] as String),
    eventVersion: json['eventVersion'] as String?,
    userIdentity: json['userIdentity'] == null
        ? null
        : AwsS3UserIdentity.fromJson(
            json['userIdentity'] as Map<String, dynamic>),
    requestParameters:
        (json['requestParameters'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
    responseElements: (json['responseElements'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
    s3: json['s3'] == null
        ? null
        : AwsS3Data.fromJson(json['s3'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AwsS3EventRecordToJson(AwsS3EventRecord instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventVersion', instance.eventVersion);
  writeNotNull('eventSource', instance.eventSource);
  writeNotNull('awsRegion', instance.awsRegion);
  writeNotNull('eventTime', instance.eventTime?.toIso8601String());
  writeNotNull('eventName', instance.eventName);
  writeNotNull('userIdentity', instance.userIdentity);
  writeNotNull('requestParameters', instance.requestParameters);
  writeNotNull('responseElements', instance.responseElements);
  writeNotNull('s3', instance.s3);
  return val;
}

AwsS3Data _$AwsS3DataFromJson(Map<String, dynamic> json) {
  return AwsS3Data(
    s3SchemaVersion: json['s3SchemaVersion'] as String?,
    configurationId: json['configurationId'] as String?,
    bucket: json['bucket'] == null
        ? null
        : AwsS3Bucket.fromJson(json['bucket'] as Map<String, dynamic>),
    object: json['object'] == null
        ? null
        : AWSS3EventObject.fromJson(json['object'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AwsS3DataToJson(AwsS3Data instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('s3SchemaVersion', instance.s3SchemaVersion);
  writeNotNull('configurationId', instance.configurationId);
  writeNotNull('bucket', instance.bucket);
  writeNotNull('object', instance.object);
  return val;
}

AwsS3Bucket _$AwsS3BucketFromJson(Map<String, dynamic> json) {
  return AwsS3Bucket(
    name: json['name'] as String?,
    ownerIdentity: json['ownerIdentity'] == null
        ? null
        : AwsS3UserIdentity.fromJson(
            json['ownerIdentity'] as Map<String, dynamic>),
    arn: json['arn'] as String?,
  );
}

Map<String, dynamic> _$AwsS3BucketToJson(AwsS3Bucket instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('ownerIdentity', instance.ownerIdentity);
  writeNotNull('arn', instance.arn);
  return val;
}

AWSS3EventObject _$AWSS3EventObjectFromJson(Map<String, dynamic> json) {
  return AWSS3EventObject(
    key: json['key'] as String?,
    size: const PermissiveNullableIntConverter().fromJson(json['size']),
    eTag: json['eTag'] as String?,
    sequencer: json['sequencer'] as String?,
  );
}

Map<String, dynamic> _$AWSS3EventObjectToJson(AWSS3EventObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  writeNotNull(
      'size', const PermissiveNullableIntConverter().toJson(instance.size));
  writeNotNull('eTag', instance.eTag);
  writeNotNull('sequencer', instance.sequencer);
  return val;
}

AwsS3UserIdentity _$AwsS3UserIdentityFromJson(Map<String, dynamic> json) {
  return AwsS3UserIdentity(
    principalId: json['principalId'] as String?,
  );
}

Map<String, dynamic> _$AwsS3UserIdentityToJson(AwsS3UserIdentity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('principalId', instance.principalId);
  return val;
}
