import 'package:json_annotation/json_annotation.dart';

part 'cognito_event.g.dart';

@JsonSerializable()
class AwsCognitoEvent {
  @JsonKey()
  final int version;

  @JsonKey()
  final String triggerSource;

  @JsonKey()
  final String region;

  @JsonKey()
  final String userPoolId;

  @JsonKey()
  final String userName;

  @JsonKey()
  final Map<String, String> callerContext;

  @JsonKey()
  final AwsCognitoRequest request;

  @JsonKey()
  final AwsCognitoResponse response;

  const AwsCognitoEvent(
      {required this.version,
      required this.triggerSource,
      required this.region,
      required this.userPoolId,
      required this.userName,
      required this.callerContext,
      required this.request,
      required this.response});

  factory AwsCognitoEvent.fromJson(Map<String, dynamic> json) =>
      _$AwsCognitoEventFromJson(json);

  Map<String, dynamic> toJson() => _$AwsCognitoEventToJson(this);
}

@JsonSerializable()
class AwsCognitoRequest {
  @JsonKey()
  final Map<String, dynamic> userAttributes;

  @JsonKey(defaultValue: {})
  final Map<String, String> validationData;

  @JsonKey(defaultValue: {})
  final Map<String, String> clientMetadata;

  @JsonKey(defaultValue: false)
  final bool newDeviceUsed;

  @JsonKey()
  final AwsGroupConfiguration? groupConfiguration;

  @JsonKey()
  final String? password;

  @JsonKey()
  final String codeParameter;

  const AwsCognitoRequest(
      {required this.userAttributes,
      required this.validationData,
      required this.clientMetadata,
      required this.newDeviceUsed,
      required this.codeParameter,
      required this.password,
      required this.groupConfiguration});

  factory AwsCognitoRequest.fromJson(Map<String, dynamic> json) =>
      _$AwsCognitoRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AwsCognitoRequestToJson(this);
}

@JsonSerializable()
class AwsCognitoResponse {
  @JsonKey(defaultValue: false)
  final bool autoConfirmUser;

  @JsonKey(defaultValue: false)
  final bool autoVerifyPhone;

  @JsonKey(defaultValue: false)
  final bool autoVerifyEmail;

  @JsonKey()
  final AwsClaimOverrideDetails? claimsOverrideDetails;

  @JsonKey(defaultValue: {})
  final Map<String, String> userAttributes;

  @JsonKey(defaultValue: '')
  final String finalUserStatus;

  @JsonKey(defaultValue: '')
  final String messageAction;

  @JsonKey(defaultValue: [])
  final List<String> desiredDeliveryMediums;

  @JsonKey(defaultValue: false)
  final bool forceAliasCreation;

  @JsonKey(defaultValue: '')
  final String smsMessage;

  @JsonKey(defaultValue: '')
  final String emailMessage;

  @JsonKey(defaultValue: '')
  final String emailSubject;

  const AwsCognitoResponse(
      {required this.autoConfirmUser,
      required this.autoVerifyEmail,
      required this.autoVerifyPhone,
      required this.claimsOverrideDetails,
      required this.userAttributes,
      required this.finalUserStatus,
      required this.desiredDeliveryMediums,
      required this.forceAliasCreation,
      required this.messageAction,
      required this.smsMessage,
      required this.emailMessage,
      required this.emailSubject});

  factory AwsCognitoResponse.fromJson(Map<String, dynamic> json) =>
      _$AwsCognitoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AwsCognitoResponseToJson(this);
}

@JsonSerializable()
class AwsGroupConfiguration {
  @JsonKey()
  final List<String> groupsToOverride;

  @JsonKey()
  final List<String> iamRolesToOverride;

  @JsonKey()
  final String preferredRole;

  @JsonKey()
  final Map<String, String> clientMetadata;

  const AwsGroupConfiguration(
      {required this.groupsToOverride,
      required this.iamRolesToOverride,
      required this.preferredRole,
      required this.clientMetadata});

  factory AwsGroupConfiguration.fromJson(Map<String, dynamic> json) =>
      _$AwsGroupConfigurationFromJson(json);

  Map<String, dynamic> toJson() => _$AwsGroupConfigurationToJson(this);
}

@JsonSerializable()
class AwsClaimOverrideDetails {
  @JsonKey()
  final Map<String, String> claimsToAddOrOverride;

  @JsonKey()
  final List<String> claimsToSuppress;

  @JsonKey()
  final AwsGroupConfiguration groupOverrideDetails;

  const AwsClaimOverrideDetails(
      {required this.claimsToAddOrOverride,
      required this.claimsToSuppress,
      required this.groupOverrideDetails});

  factory AwsClaimOverrideDetails.fromJson(Map<String, dynamic> json) =>
      _$AwsClaimOverrideDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$AwsClaimOverrideDetailsToJson(this);
}
