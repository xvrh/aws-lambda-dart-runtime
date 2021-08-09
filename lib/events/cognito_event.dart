import 'package:aws_lambda_dart_runtime/runtime/event.dart';
import 'package:json_annotation/json_annotation.dart';
import '../utils/json_converters.dart';

part 'cognito_event.g.dart';

@JsonSerializable(includeIfNull: false)
@PermissiveIntConverter()
@PermissiveNullableIntConverter()
@PermissiveBoolConverter()
class AwsCognitoEvent extends Event {
  @JsonKey()
  final int? version;

  @JsonKey()
  final String? triggerSource;

  @JsonKey()
  final String? region;

  @JsonKey()
  final String? userPoolId;

  @JsonKey()
  final String? userName;

  @JsonKey()
  final Map<String, String>? callerContext;

  @JsonKey()
  final AwsCognitoRequest? request;

  @JsonKey()
  final AwsCognitoResponse? response;

  const AwsCognitoEvent(
      {this.version,
      this.triggerSource,
      this.region,
      this.userPoolId,
      this.userName,
      this.callerContext,
      this.request,
      this.response});

  factory AwsCognitoEvent.fromJson(Map<String, dynamic> json) =>
      _$AwsCognitoEventFromJson(json);

  Map<String, dynamic> toJson() => _$AwsCognitoEventToJson(this);

  AwsCognitoEvent copyWith({
    int? version,
    String? triggerSource,
    String? region,
    String? userPoolId,
    String? userName,
    Map<String, String>? callerContext,
    AwsCognitoRequest? request,
    AwsCognitoResponse? response,
  }) {
    return AwsCognitoEvent(
      version: version ?? this.version,
      triggerSource: triggerSource ?? this.triggerSource,
      region: region ?? this.region,
      userPoolId: userPoolId ?? this.userPoolId,
      userName: userName ?? this.userName,
      callerContext: callerContext ?? this.callerContext,
      request: request ?? this.request,
      response: response ?? this.response,
    );
  }
}

@JsonSerializable(includeIfNull: false)
@PermissiveIntConverter()
@PermissiveNullableIntConverter()
@PermissiveBoolConverter()
class AwsCognitoRequest {
  @JsonKey()
  final Map<String, dynamic>? userAttributes;

  @JsonKey()
  final Map<String, String>? validationData;

  @JsonKey()
  final Map<String, String>? clientMetadata;

  @JsonKey()
  final bool newDeviceUsed;

  @JsonKey()
  final AwsGroupConfiguration? groupConfiguration;

  @JsonKey()
  final String? password;

  @JsonKey()
  final String? codeParameter;

  const AwsCognitoRequest(
      {this.userAttributes,
      this.validationData,
      this.clientMetadata,
      bool? newDeviceUsed,
      this.codeParameter,
      this.password,
      this.groupConfiguration})
      : newDeviceUsed = newDeviceUsed ?? false;

  factory AwsCognitoRequest.fromJson(Map<String, dynamic> json) =>
      _$AwsCognitoRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AwsCognitoRequestToJson(this);
}

@JsonSerializable(includeIfNull: false)
@PermissiveIntConverter()
@PermissiveNullableIntConverter()
@PermissiveBoolConverter()
class AwsCognitoResponse {
  @JsonKey()
  final bool? autoConfirmUser;

  @JsonKey()
  final bool? autoVerifyPhone;

  @JsonKey()
  final bool? autoVerifyEmail;

  @JsonKey()
  final AwsClaimOverrideDetails? claimsOverrideDetails;

  @JsonKey()
  final Map<String, String>? userAttributes;

  @JsonKey()
  final String? finalUserStatus;

  @JsonKey()
  final String? messageAction;

  @JsonKey()
  final List<String>? desiredDeliveryMediums;

  @JsonKey()
  final bool? forceAliasCreation;

  @JsonKey()
  final String? smsMessage;

  @JsonKey()
  final String? emailMessage;

  @JsonKey()
  final String? emailSubject;

  const AwsCognitoResponse(
      {this.autoConfirmUser,
      this.autoVerifyEmail,
      this.autoVerifyPhone,
      this.claimsOverrideDetails,
      this.userAttributes,
      this.finalUserStatus,
      this.desiredDeliveryMediums,
      this.forceAliasCreation,
      this.messageAction,
      this.smsMessage,
      this.emailMessage,
      this.emailSubject});

  factory AwsCognitoResponse.fromJson(Map<String, dynamic> json) =>
      _$AwsCognitoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AwsCognitoResponseToJson(this);
}

@JsonSerializable(includeIfNull: false)
@PermissiveIntConverter()
@PermissiveNullableIntConverter()
@PermissiveBoolConverter()
class AwsGroupConfiguration {
  @JsonKey()
  final List<String>? groupsToOverride;

  @JsonKey()
  final List<String>? iamRolesToOverride;

  @JsonKey()
  final String? preferredRole;

  @JsonKey()
  final Map<String, String>? clientMetadata;

  const AwsGroupConfiguration(
      {this.groupsToOverride,
      this.iamRolesToOverride,
      this.preferredRole,
      this.clientMetadata});

  factory AwsGroupConfiguration.fromJson(Map<String, dynamic> json) =>
      _$AwsGroupConfigurationFromJson(json);

  Map<String, dynamic> toJson() => _$AwsGroupConfigurationToJson(this);
}

@JsonSerializable(includeIfNull: false)
@PermissiveIntConverter()
@PermissiveNullableIntConverter()
@PermissiveBoolConverter()
class AwsClaimOverrideDetails {
  @JsonKey()
  final Map<String, String>? claimsToAddOrOverride;

  @JsonKey()
  final List<String>? claimsToSuppress;

  @JsonKey()
  final AwsGroupConfiguration? groupOverrideDetails;

  const AwsClaimOverrideDetails(
      {this.claimsToAddOrOverride,
      this.claimsToSuppress,
      this.groupOverrideDetails});

  factory AwsClaimOverrideDetails.fromJson(Map<String, dynamic> json) =>
      _$AwsClaimOverrideDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$AwsClaimOverrideDetailsToJson(this);
}
