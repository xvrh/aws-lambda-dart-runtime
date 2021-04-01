import 'dart:io';
import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'apigateway_event.g.dart';

/// API Gateway Response contains the data for a response
/// to the API Gateway. It contains the [body] of the HTTP response.
/// It also contains a HTTP Status Code which by default is `200`.
/// Furthermore it indicates if the [body] is Base64 encoded or not.
class AwsApiGatewayResponse {
  /// The body of the HTTP Response send from the API Gateway to the client.
  final String body;

  /// Indicates if the [body] is Base64 encoded or not. By default is `false`.
  final bool isBase64Encoded;

  // HTTP Status Code of the response of the API Gateway to the client.
  final int statusCode;

  /// The HTTP headers that should be send with the response to the client.
  final Map<String, String> headers;

  /// Returns the JSON representation of the response. This is called by
  /// the JSON encoder to produce the response.
  Map<String, dynamic> toJson() => {
        'body': body,
        'isBase64Encoded': isBase64Encoded,
        'statusCode': statusCode,
        'headers': headers
      };

  /// The factory creates a new [AwsApiGatewayResponse] from JSON.
  /// It optionally accepts the Base64 encoded flag and a HTTP Status Code
  /// for the response.
  factory AwsApiGatewayResponse.fromJson(Map<String, dynamic> body,
      {bool? isBase64Encoded, int? statusCode, Map<String, String>? headers}) {
    return AwsApiGatewayResponse(
        body: json.encode(body),
        isBase64Encoded: isBase64Encoded,
        headers: headers,
        statusCode: statusCode);
  }

  /// The Response that should be returned by the API Gateway for the
  /// Lambda invocation. It has a [body] which reflects the body of the HTTP Response.
  /// But also it signals if the [body] is Base64 encoded and what the HTTP Status Code
  /// of the response is.
  AwsApiGatewayResponse({
    String? body,
    bool? isBase64Encoded,
    Map<String, String>? headers,
    int? statusCode,
  })  : this.body = body ?? '',
        this.isBase64Encoded = isBase64Encoded ?? false,
        this.headers = headers ?? {"Content-Type": "application/json"},
        this.statusCode = statusCode ?? HttpStatus.ok;
}

/// API Gateway Event ...
@JsonSerializable()
class AwsApiGatewayEvent {
  /// URL Path ...
  @JsonKey()
  final String path;

  /// Resource ...
  @JsonKey(defaultValue: '')
  final String resource;

  /// HTTP Method ...
  @JsonKey()
  final String httpMethod;

  /// Body ...
  @JsonKey(defaultValue: '')
  final String body;

  /// Headers ...
  @JsonKey()
  final AwsApiGatewayEventHeaders headers;

  /// Path Parameters ...
  @JsonKey(defaultValue: {})
  final Map<String, dynamic> pathParameters;

  /// Query String Parameters ...
  @JsonKey(defaultValue: {})
  final Map<String, dynamic> queryStringParameters;

  /// Stage Variables ...
  @JsonKey(defaultValue: {})
  final Map<String, dynamic> stageVariables;

  /// Request Context ...
  final AwsApiGatewayEventRequestContext requestContext;

  factory AwsApiGatewayEvent.fromJson(Map<String, dynamic> json) =>
      _$AwsApiGatewayEventFromJson(json);

  Map<String, dynamic> toJson() => _$AwsApiGatewayEventToJson(this);

  const AwsApiGatewayEvent(
      {required this.resource,
      required this.path,
      required this.httpMethod,
      required this.body,
      required this.headers,
      required this.queryStringParameters,
      required this.stageVariables,
      required this.requestContext,
      required this.pathParameters});
}

/// API Gateway Event Headers ...
@JsonSerializable()
class AwsApiGatewayEventHeaders {
  @JsonKey(name: "Accept", defaultValue: '')
  final String accept;

  @JsonKey(name: "Accept-Encoding", defaultValue: '')
  final String acceptEncoding;

  @JsonKey(name: "CloudFront-Forwarded-Proto", defaultValue: '')
  final String cloudfrontForwardProto;

  @JsonKey(name: "CloudFront-Is-Desktop-Viewer", defaultValue: '')
  final String cloudfrontIsDesktopViewer;

  @JsonKey(name: "CloudFront-Is-Mobile-Viewer", defaultValue: '')
  final String cloudfrontIsMobileViewer;

  @JsonKey(name: "CloudFront-Is-SmartTV-Viewer", defaultValue: '')
  final String cloudfrontIsSmartTvViewer;

  @JsonKey(name: "CloudFront-Is-Tablet-Viewer", defaultValue: '')
  final String cloudfrontIsTabletViewer;

  @JsonKey(name: "CloudFront-Viewer-Country", defaultValue: '')
  final String cloudfrontViewerCountry;

  @JsonKey(name: "Host", defaultValue: '')
  final String host;

  @JsonKey(name: "Upgrade-Insecure-Requests", defaultValue: '')
  final String upgradeInsecureRequests;

  @JsonKey(name: "User-Agent", defaultValue: '')
  final String userAgent;

  @JsonKey(name: "Via", defaultValue: '')
  final String via;

  @JsonKey(name: "X-Amz-Cf-Id", defaultValue: '')
  final String xAmzCfId;

  @JsonKey(name: "X-Forwarded-For", defaultValue: '')
  final String xForwardedFor;

  @JsonKey(name: "X-Forwarded-Port", defaultValue: '')
  final String xForwardedPort;

  @JsonKey(name: "X-Forwarded-Proto", defaultValue: '')
  final String xForwardedProto;

  @JsonKey(name: "Cache-Control", defaultValue: '')
  final String cacheControl;

  @JsonKey(name: "X-Amzn-Trace-Id", defaultValue: '')
  final String xAmznTraceId;

  @JsonKey(ignore: true)
  Map<String, String> _raw = {};
  Map<String, String> get raw => _raw;

  factory AwsApiGatewayEventHeaders.fromJson(Map<String, String> json) {
    final event = _$AwsApiGatewayEventHeadersFromJson(json).._raw = json;

    return event;
  }

  Map<String, dynamic> toJson() => _$AwsApiGatewayEventHeadersToJson(this);

  AwsApiGatewayEventHeaders({
    required this.accept,
    required this.acceptEncoding,
    required this.cloudfrontIsDesktopViewer,
    required this.cloudfrontIsMobileViewer,
    required this.cloudfrontIsSmartTvViewer,
    required this.cloudfrontForwardProto,
    required this.cloudfrontIsTabletViewer,
    required this.cloudfrontViewerCountry,
    required this.upgradeInsecureRequests,
    required this.cacheControl,
    required this.host,
    required this.via,
    required this.userAgent,
    required this.xAmzCfId,
    required this.xAmznTraceId,
    required this.xForwardedFor,
    required this.xForwardedPort,
    required this.xForwardedProto,
  });
}

/// API Gateway Event Request Context ...
@JsonSerializable()
class AwsApiGatewayEventRequestContext {
  @JsonKey(defaultValue: '')
  final String accountId;

  @JsonKey(defaultValue: '')
  final String resourceId;

  @JsonKey(defaultValue: '')
  final String stage;

  @JsonKey(defaultValue: '')
  final String requestId;

  @JsonKey(defaultValue: '')
  final String resourcePath;

  @JsonKey(defaultValue: '')
  final String httpMethod;

  @JsonKey(defaultValue: '')
  final String apiId;

  @JsonKey()
  final AwsApiGatewayEventRequestContextIdentity? identity;

  factory AwsApiGatewayEventRequestContext.fromJson(
          Map<String, dynamic> json) =>
      _$AwsApiGatewayEventRequestContextFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AwsApiGatewayEventRequestContextToJson(this);

  const AwsApiGatewayEventRequestContext(
      {required this.accountId,
      required this.resourceId,
      required this.stage,
      required this.requestId,
      required this.resourcePath,
      required this.httpMethod,
      required this.apiId,
      required this.identity});
}

/// API Gateway Event Identity
@JsonSerializable()
class AwsApiGatewayEventRequestContextIdentity {
  @JsonKey(defaultValue: '')
  final String cognitoIdentityPoolId;

  @JsonKey(defaultValue: '')
  final String accountId;

  @JsonKey(defaultValue: '')
  final String cognitoIdentityId;

  @JsonKey(defaultValue: '')
  final String caller;

  @JsonKey(defaultValue: '')
  final String apiKey;

  @JsonKey(defaultValue: '')
  final String sourceIp;

  @JsonKey(defaultValue: '')
  final String cognitoAuthenticationType;

  @JsonKey(defaultValue: '')
  final String cognitoAuthenticationProvider;

  @JsonKey(defaultValue: '')
  final String userArn;

  @JsonKey(defaultValue: '')
  final String userAgent;

  @JsonKey(defaultValue: '')
  final String user;

  factory AwsApiGatewayEventRequestContextIdentity.fromJson(
          Map<String, dynamic> json) =>
      _$AwsApiGatewayEventRequestContextIdentityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AwsApiGatewayEventRequestContextIdentityToJson(this);

  const AwsApiGatewayEventRequestContextIdentity(
      {required this.cognitoIdentityPoolId,
      required this.cognitoAuthenticationProvider,
      required this.cognitoAuthenticationType,
      required this.caller,
      required this.accountId,
      required this.cognitoIdentityId,
      required this.apiKey,
      required this.sourceIp,
      required this.user,
      required this.userAgent,
      required this.userArn});
}
