import 'package:json_annotation/json_annotation.dart';

part 'appsync_event.g.dart';

/// App Sync Event ...
@JsonSerializable()
class AwsAppSyncEvent {
  @JsonKey(defaultValue: '')
  final String version;

  @JsonKey(defaultValue: '')
  final String operation;

  @JsonKey(defaultValue: '')
  final String payload;

  factory AwsAppSyncEvent.fromJson(Map<String, dynamic> json) =>
      _$AwsAppSyncEventFromJson(json);

  Map<String, dynamic> toJson() => _$AwsAppSyncEventToJson(this);

  const AwsAppSyncEvent(
      {required this.version, required this.operation, required this.payload});
}
