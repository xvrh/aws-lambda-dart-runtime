import 'package:json_annotation/json_annotation.dart';
import '../utils/json_converters.dart';

part 's3_event.g.dart';

/// Representing a recorded S3 Event send to the Lambda.
/// This can be send in batches of operations.
@JsonSerializable()
@PermissiveIntConverter()
@PermissiveNullableIntConverter()
@PermissiveBoolConverter()
class AwsS3Event {
  @JsonKey(name: "Records")
  final List<AwsS3EventRecord> records;

  const AwsS3Event({required this.records});

  factory AwsS3Event.fromJson(Map<String, dynamic> json) =>
      _$AwsS3EventFromJson(json);

  Map<String, dynamic> toJson() => _$AwsS3EventToJson(this);
}

/// Notifcation Event for Lambda in S3.
@JsonSerializable()
@PermissiveIntConverter()
@PermissiveNullableIntConverter()
@PermissiveBoolConverter()
class AwsS3EventRecord {
  final String eventVersion;
  final String eventSource;
  final String awsRegion;
  final DateTime eventTime;
  final String eventName;
  final AwsS3UserIdentity? userIdentity;

  @JsonKey(defaultValue: {})
  final Map<String, String> requestParameters;

  @JsonKey(defaultValue: {})
  final Map<String, String> responseElements;

  final AwsS3Data s3;

  const AwsS3EventRecord(
      {required this.eventName,
      required this.eventSource,
      required this.awsRegion,
      required this.eventTime,
      required this.eventVersion,
      required this.userIdentity,
      required this.requestParameters,
      required this.responseElements,
      required this.s3});

  factory AwsS3EventRecord.fromJson(Map<String, dynamic> json) =>
      _$AwsS3EventRecordFromJson(json);

  Map<String, dynamic> toJson() => _$AwsS3EventRecordToJson(this);
}

@JsonSerializable()
@PermissiveIntConverter()
@PermissiveNullableIntConverter()
@PermissiveBoolConverter()
class AwsS3Data {
  @JsonKey(defaultValue: '')
  final String s3SchemaVersion;

  @JsonKey(defaultValue: '')
  final String configurationId;

  final AwsS3Bucket bucket;

  final AWSS3EventObject object;

  AwsS3Data(
      {required this.s3SchemaVersion,
      required this.configurationId,
      required this.bucket,
      required this.object});

  factory AwsS3Data.fromJson(Map<String, dynamic> json) =>
      _$AwsS3DataFromJson(json);

  Map<String, dynamic> toJson() => _$AwsS3DataToJson(this);
}

@JsonSerializable()
@PermissiveIntConverter()
@PermissiveNullableIntConverter()
@PermissiveBoolConverter()
class AwsS3Bucket {
  final String name;
  final AwsS3UserIdentity ownerIdentity;
  final String arn;

  AwsS3Bucket(
      {required this.name, required this.ownerIdentity, required this.arn});

  factory AwsS3Bucket.fromJson(Map<String, dynamic> json) =>
      _$AwsS3BucketFromJson(json);

  Map<String, dynamic> toJson() => _$AwsS3BucketToJson(this);
}

@JsonSerializable()
@PermissiveIntConverter()
@PermissiveNullableIntConverter()
@PermissiveBoolConverter()
class AWSS3EventObject {
  final String key;
  final int size;

  @JsonKey(defaultValue: '')
  final String eTag;

  @JsonKey(defaultValue: '')
  final String sequencer;

  AWSS3EventObject(
      {required this.key,
      required this.size,
      required this.eTag,
      required this.sequencer});

  factory AWSS3EventObject.fromJson(Map<String, dynamic> json) =>
      _$AWSS3EventObjectFromJson(json);

  Map<String, dynamic> toJson() => _$AWSS3EventObjectToJson(this);
}

@JsonSerializable()
@PermissiveIntConverter()
@PermissiveNullableIntConverter()
@PermissiveBoolConverter()
class AwsS3UserIdentity {
  final String principalId;

  AwsS3UserIdentity({required this.principalId});

  factory AwsS3UserIdentity.fromJson(Map<String, dynamic> json) =>
      _$AwsS3UserIdentityFromJson(json);

  Map<String, dynamic> toJson() => _$AwsS3UserIdentityToJson(this);
}
