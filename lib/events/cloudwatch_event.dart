import 'package:json_annotation/json_annotation.dart';

part 'cloudwatch_event.g.dart';

/// Event that is send via SQS to trigger for an innovation
/// of a Lambda.
///
/// Example
///
/// ```
/// {
///   "id": "cdc73f9d-aea9-11e3-9d5a-835b769c0d9c",
///   "detail-type": "Scheduled Event",
///   "source": "aws.events",
///   "account": "{{{account-id}}}",
///   "time": "1970-01-01T00:00:00Z",
///   "region": "eu-west-1",
///   "resources": [
///     "arn:aws:events:eu-west-1:123456789012:rule/ExampleRule"
///   ],
///   "detail": {}
/// }
/// ```
@JsonSerializable()
class AwsCloudwatchEvent {
  /// Resources ...
  @JsonKey()
  final List<String> resources;

  /// Region ...
  @JsonKey()
  final String region;

  /// Id ...
  @JsonKey()
  final String id;

  /// Source ...
  @JsonKey()
  final String source;

  /// Account ...
  @JsonKey(defaultValue: '')
  final String account;

  /// Data Type ...
  @JsonKey(name: "detail-type")
  final String detailType;

  /// Detail ...
  @JsonKey(defaultValue: {})
  final Map<String, dynamic> detail;

  /// Time ...
  @JsonKey()
  final DateTime time;

  factory AwsCloudwatchEvent.fromJson(Map<String, dynamic> json) =>
      _$AwsCloudwatchEventFromJson(json);

  Map<String, dynamic> toJson() => _$AwsCloudwatchEventToJson(this);

  const AwsCloudwatchEvent(
      {required this.resources,
      required this.region,
      required this.id,
      required this.source,
      required this.account,
      required this.detailType,
      required this.detail,
      required this.time});
}
