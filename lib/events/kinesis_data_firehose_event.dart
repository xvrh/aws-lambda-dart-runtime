import 'package:json_annotation/json_annotation.dart';
import '../utils/json_converters.dart';

part 'kinesis_data_firehose_event.g.dart';

/// Kinesis .....
@JsonSerializable()
@PermissiveIntConverter()
@PermissiveNullableIntConverter()
@PermissiveBoolConverter()
class AwsKinesisFirehoseData {
  /// Record ID ...
  @JsonKey()
  final String recordId;

  /// Approximated Arrival Timestamp ...
  @JsonKey()
  final int approximateArrivalTimestamp;

  /// Data ...
  @JsonKey(defaultValue: '')
  final String data;

  factory AwsKinesisFirehoseData.fromJson(Map<String, dynamic> json) {
    return _$AwsKinesisFirehoseDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AwsKinesisFirehoseDataToJson(this);

  const AwsKinesisFirehoseData(
      {required this.recordId,
      required this.data,
      required this.approximateArrivalTimestamp});
}

/// Kinesis Event ...
@JsonSerializable()
@PermissiveIntConverter()
@PermissiveNullableIntConverter()
@PermissiveBoolConverter()
class AwsKinesisFirehoseDataEvent {
  /// Invocation ID ...
  @JsonKey()
  final String invocationId;

  /// Delivery Stream ARN ...
  @JsonKey()
  final String deliveryStreamArn;

  /// Region ...
  @JsonKey()
  final String region;

  /// Records ...
  @JsonKey()
  final List<AwsKinesisFirehoseData> records;

  factory AwsKinesisFirehoseDataEvent.fromJson(Map<String, dynamic> json) {
    return _$AwsKinesisFirehoseDataEventFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AwsKinesisFirehoseDataEventToJson(this);

  const AwsKinesisFirehoseDataEvent(
      {required this.records,
      required this.invocationId,
      required this.deliveryStreamArn,
      required this.region});
}
