import 'package:json_annotation/json_annotation.dart';
import '../utils/json_converters.dart';

part 'alexa_event.g.dart';

/// Header are meta information about the event.
@JsonSerializable()
@PermissiveIntConverter()
@PermissiveNullableIntConverter()
@PermissiveBoolConverter()
class AwsAlexaEventHeader {
  /// Version of the send payload.
  @JsonKey()
  final String payloadVersion;

  /// Namespace of the event.
  @JsonKey(defaultValue: '')
  final String namespace;

  /// Name of the event
  @JsonKey()
  final String name;

  factory AwsAlexaEventHeader.fromJson(Map<String, dynamic> json) =>
      _$AwsAlexaEventHeaderFromJson(json);

  Map<String, dynamic> toJson() => _$AwsAlexaEventHeaderToJson(this);

  const AwsAlexaEventHeader(
      {required this.namespace,
      required this.payloadVersion,
      required this.name});
}

/// Event send by an Application Load Balancer to the
/// invocation to the Lambda.
@JsonSerializable()
@PermissiveIntConverter()
@PermissiveNullableIntConverter()
@PermissiveBoolConverter()
class AwsAlexaEvent {
  /// Meta information about the event.
  @JsonKey()
  final AwsAlexaEventHeader? header;

  /// Payload of the event send by Alexa.
  @JsonKey(defaultValue: {})
  final Map<String, dynamic> payload;

  factory AwsAlexaEvent.fromJson(Map<String, dynamic> json) =>
      _$AwsAlexaEventFromJson(json);

  Map<String, dynamic> toJson() => _$AwsAlexaEventToJson(this);

  const AwsAlexaEvent({required this.header, required this.payload});
}
