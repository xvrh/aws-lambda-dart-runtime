import 'package:json_annotation/json_annotation.dart';

part 'sqs_event.g.dart';

/// SQS Event Record that is send via [AwsSQSEvent].
@JsonSerializable()
class AwsSQSEventRecord {
  /// Id of the SQS message.
  @JsonKey()
  final String messageId;

  /// Name of the receipt handle.
  @JsonKey()
  final String receiptHandle;

  /// Body of the message
  @JsonKey()
  final String body;

  /// Attributes that are send with the event.
  @JsonKey()
  final Map<String, dynamic> attributes;

  /// Message attributes that are send with the event.
  @JsonKey()
  final Map<String, dynamic> messageAttributes;

  /// The md5 hash of the message body.
  @JsonKey()
  final String md5OfBody;

  /// Source of the Event.
  @JsonKey()
  final String eventSource;

  /// Source of the Event ARN.
  @JsonKey()
  final String eventSourceARN;

  /// Aws Region this event was emitted from
  @JsonKey()
  final String awsRegion;

  factory AwsSQSEventRecord.fromJson(Map<String, dynamic> json) {
    return _$AwsSQSEventRecordFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AwsSQSEventRecordToJson(this);

  const AwsSQSEventRecord(
      {required this.messageId,
      required this.body,
      required this.receiptHandle,
      required this.attributes,
      required this.messageAttributes,
      required this.md5OfBody,
      required this.eventSource,
      required this.eventSourceARN,
      required this.awsRegion});
}

/// Event that is send via SQS to trigger for an innovation
/// of a Lambda.
@JsonSerializable()
class AwsSQSEvent {
  /// The SQS message records that have been send with the event.
  @JsonKey(name: "Records")
  final List<AwsSQSEventRecord> records;

  factory AwsSQSEvent.fromJson(Map<String, dynamic> json) {
    return _$AwsSQSEventFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AwsSQSEventToJson(this);

  const AwsSQSEvent({required this.records});
}
