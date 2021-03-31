import 'package:json_annotation/json_annotation.dart';

part 'dynamodb_event.g.dart';

/// Event send by a DynamoDB stream that contains
/// the updated records in the DynamoDB table.
@JsonSerializable()
class AwsDynamoDBUpdateRecord {
  /// Keys ...
  @JsonKey(name: "Keys")
  final Map<String, dynamic> keys;

  /// New Image ...
  @JsonKey(name: "NewImage")
  final Map<String, dynamic> oldImage;

  /// Old Image ....
  @JsonKey(name: "OldImage")
  final Map<String, dynamic> newImage;

  factory AwsDynamoDBUpdateRecord.fromJson(Map<String, dynamic> json) =>
      _$AwsDynamoDBUpdateRecordFromJson(json);

  Map<String, dynamic> toJson() => _$AwsDynamoDBUpdateRecordToJson(this);

  const AwsDynamoDBUpdateRecord(
      {required this.keys, required this.oldImage, required this.newImage});
}

/// DynamoDB Update Event Record ...
@JsonSerializable()
class AwsDynamoDBUpdateEventRecord {
  /// Event Id ...
  @JsonKey(name: 'eventID')
  final String eventId;

  /// Event Name ...
  @JsonKey()
  final String eventName;

  /// Event Source ...
  @JsonKey()
  final String eventSource;

  /// Event Version ...
  @JsonKey()
  final String eventVersion;

  /// AWS Region ...
  @JsonKey()
  final String awsRegion;

  /// Event Source ARN ...
  @JsonKey()
  final String eventSourceARN;

  factory AwsDynamoDBUpdateEventRecord.fromJson(Map<String, dynamic> json) =>
      _$AwsDynamoDBUpdateEventRecordFromJson(json);

  Map<String, dynamic> toJson() => _$AwsDynamoDBUpdateEventRecordToJson(this);

  const AwsDynamoDBUpdateEventRecord(
      {required this.eventId,
      required this.eventName,
      required this.eventSource,
      required this.eventVersion,
      required this.awsRegion,
      required this.eventSourceARN});
}

/// DynamoDB Update Event ...
@JsonSerializable()
class AwsDynamoDBUpdateEvent {
  /// awslogs ...
  @JsonKey(name: "Records")
  final List<AwsDynamoDBUpdateEventRecord> records;

  factory AwsDynamoDBUpdateEvent.fromJson(Map<String, dynamic> json) =>
      _$AwsDynamoDBUpdateEventFromJson(json);

  Map<String, dynamic> toJson() => _$AwsDynamoDBUpdateEventToJson(this);

  const AwsDynamoDBUpdateEvent({required this.records});
}
