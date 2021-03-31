import 'package:json_annotation/json_annotation.dart';

part 'appsync_event.g.dart';

/// App Sync Event ...
@JsonSerializable()
class AwsAppSyncEvent {
  @JsonKey(name: "version")
  final String version;

  @JsonKey(name: "operation")
  final String operation;

  @JsonKey(name: "payload")
  final String payload;

  factory AwsAppSyncEvent.fromJson(Map<String, dynamic> json) =>
      _$AwsAppSyncEventFromJson(json);

  Map<String, dynamic> toJson() => _$AwsAppSyncEventToJson(this);

  const AwsAppSyncEvent(
      {required this.version, required this.operation, required this.payload});
}
