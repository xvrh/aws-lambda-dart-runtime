import 'package:json_annotation/json_annotation.dart';
import '../utils/json_converters.dart';

part 'kinesis_data_stream_event.g.dart';

/// Kinesis .....
@JsonSerializable()
@PermissiveIntConverter()
@PermissiveNullableIntConverter()
@PermissiveBoolConverter()
class AwsKinesisDataStream {
  /// Partition Key ...
  @JsonKey()
  final String partitionKey;

  /// Kinesis Schema Version ...
  @JsonKey()
  final String kinesisSchemaVersion;

  /// Data ...
  @JsonKey(defaultValue: '')
  final String data;

  /// Sequenzer Number ...
  @JsonKey()
  final String sequenceNumber;

  /// Approximate Arrival Timestamp ...
  @JsonKey()
  final int approximateArrivalTimestamp;

  factory AwsKinesisDataStream.fromJson(Map<String, dynamic> json) {
    return _$AwsKinesisDataStreamFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AwsKinesisDataStreamToJson(this);

  const AwsKinesisDataStream(
      {required this.partitionKey,
      required this.kinesisSchemaVersion,
      required this.data,
      required this.sequenceNumber,
      required this.approximateArrivalTimestamp});
}

/// Kinesis record that is send via [AwsKinesisEvent].
@JsonSerializable()
@PermissiveIntConverter()
@PermissiveNullableIntConverter()
@PermissiveBoolConverter()
class AwsKinesisDataStreamRecord {
  /// Data ...
  @JsonKey()
  final AwsKinesisDataStream kinesis;

  /// Source of the Event.
  @JsonKey()
  final String eventSource;

  /// Event Id ...
  @JsonKey()
  final String eventID;

  /// Event Version ...
  @JsonKey()
  final String eventVersion;

  /// Event Name ...
  @JsonKey()
  final String eventName;

  /// Event Source ARN ...
  @JsonKey()
  final String eventSourceARN;

  /// Invokey Identity ARN ...
  @JsonKey()
  final String invokeIdentityArn;

  /// Aws Region this event was emitted from
  @JsonKey()
  final String awsRegion;

  factory AwsKinesisDataStreamRecord.fromJson(Map<String, dynamic> json) {
    return _$AwsKinesisDataStreamRecordFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AwsKinesisDataStreamRecordToJson(this);

  const AwsKinesisDataStreamRecord(
      {required this.kinesis,
      required this.invokeIdentityArn,
      required this.eventName,
      required this.eventID,
      required this.eventSource,
      required this.eventVersion,
      required this.eventSourceARN,
      required this.awsRegion});
}

/// Kinesis Event ...
@JsonSerializable()
@PermissiveIntConverter()
@PermissiveNullableIntConverter()
@PermissiveBoolConverter()
class AwsKinesisDataStreamEvent {
  /// The SQS message records that have been send with the event.
  @JsonKey(name: "Records")
  final List<AwsKinesisDataStreamRecord> records;

  factory AwsKinesisDataStreamEvent.fromJson(Map<String, dynamic> json) {
    return _$AwsKinesisDataStreamEventFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AwsKinesisDataStreamEventToJson(this);

  const AwsKinesisDataStreamEvent({required this.records});
}
