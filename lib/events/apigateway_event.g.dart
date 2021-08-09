// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apigateway_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AwsApiGatewayEvent _$AwsApiGatewayEventFromJson(Map<String, dynamic> json) {
  return AwsApiGatewayEvent(
    resource: json['resource'] as String?,
    path: json['path'] as String?,
    httpMethod: json['httpMethod'] as String?,
    body: json['body'] as String?,
    headers: json['headers'] == null
        ? null
        : AwsApiGatewayEventHeaders.fromJson(
            json['headers'] as Map<String, dynamic>),
    queryStringParameters:
        json['queryStringParameters'] as Map<String, dynamic>?,
    stageVariables: json['stageVariables'] as Map<String, dynamic>?,
    requestContext: json['requestContext'] == null
        ? null
        : AwsApiGatewayEventRequestContext.fromJson(
            json['requestContext'] as Map<String, dynamic>),
    pathParameters: json['pathParameters'] as Map<String, dynamic>?,
  );
}

Map<String, dynamic> _$AwsApiGatewayEventToJson(AwsApiGatewayEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('path', instance.path);
  writeNotNull('resource', instance.resource);
  writeNotNull('httpMethod', instance.httpMethod);
  writeNotNull('body', instance.body);
  writeNotNull('headers', instance.headers);
  writeNotNull('pathParameters', instance.pathParameters);
  writeNotNull('queryStringParameters', instance.queryStringParameters);
  writeNotNull('stageVariables', instance.stageVariables);
  writeNotNull('requestContext', instance.requestContext);
  return val;
}

AwsApiGatewayEventHeaders _$AwsApiGatewayEventHeadersFromJson(
    Map<String, dynamic> json) {
  return AwsApiGatewayEventHeaders(
    accept: json['Accept'] as String?,
    acceptEncoding: json['Accept-Encoding'] as String?,
    cloudfrontIsDesktopViewer: json['CloudFront-Is-Desktop-Viewer'] as String?,
    cloudfrontIsMobileViewer: json['CloudFront-Is-Mobile-Viewer'] as String?,
    cloudfrontIsSmartTvViewer: json['CloudFront-Is-SmartTV-Viewer'] as String?,
    cloudfrontForwardProto: json['CloudFront-Forwarded-Proto'] as String?,
    cloudfrontIsTabletViewer: json['CloudFront-Is-Tablet-Viewer'] as String?,
    cloudfrontViewerCountry: json['CloudFront-Viewer-Country'] as String?,
    upgradeInsecureRequests: json['Upgrade-Insecure-Requests'] as String?,
    cacheControl: json['Cache-Control'] as String?,
    host: json['Host'] as String?,
    via: json['Via'] as String?,
    userAgent: json['User-Agent'] as String?,
    xAmzCfId: json['X-Amz-Cf-Id'] as String?,
    xAmznTraceId: json['X-Amzn-Trace-Id'] as String?,
    xForwardedFor: json['X-Forwarded-For'] as String?,
    xForwardedPort: json['X-Forwarded-Port'] as String?,
    xForwardedProto: json['X-Forwarded-Proto'] as String?,
  );
}

Map<String, dynamic> _$AwsApiGatewayEventHeadersToJson(
    AwsApiGatewayEventHeaders instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Accept', instance.accept);
  writeNotNull('Accept-Encoding', instance.acceptEncoding);
  writeNotNull('CloudFront-Forwarded-Proto', instance.cloudfrontForwardProto);
  writeNotNull(
      'CloudFront-Is-Desktop-Viewer', instance.cloudfrontIsDesktopViewer);
  writeNotNull(
      'CloudFront-Is-Mobile-Viewer', instance.cloudfrontIsMobileViewer);
  writeNotNull(
      'CloudFront-Is-SmartTV-Viewer', instance.cloudfrontIsSmartTvViewer);
  writeNotNull(
      'CloudFront-Is-Tablet-Viewer', instance.cloudfrontIsTabletViewer);
  writeNotNull('CloudFront-Viewer-Country', instance.cloudfrontViewerCountry);
  writeNotNull('Host', instance.host);
  writeNotNull('Upgrade-Insecure-Requests', instance.upgradeInsecureRequests);
  writeNotNull('User-Agent', instance.userAgent);
  writeNotNull('Via', instance.via);
  writeNotNull('X-Amz-Cf-Id', instance.xAmzCfId);
  writeNotNull('X-Forwarded-For', instance.xForwardedFor);
  writeNotNull('X-Forwarded-Port', instance.xForwardedPort);
  writeNotNull('X-Forwarded-Proto', instance.xForwardedProto);
  writeNotNull('Cache-Control', instance.cacheControl);
  writeNotNull('X-Amzn-Trace-Id', instance.xAmznTraceId);
  return val;
}

AwsApiGatewayEventRequestContext _$AwsApiGatewayEventRequestContextFromJson(
    Map<String, dynamic> json) {
  return AwsApiGatewayEventRequestContext(
    accountId: json['accountId'] as String?,
    resourceId: json['resourceId'] as String?,
    stage: json['stage'] as String?,
    requestId: json['requestId'] as String?,
    resourcePath: json['resourcePath'] as String?,
    httpMethod: json['httpMethod'] as String?,
    apiId: json['apiId'] as String?,
    identity: json['identity'] == null
        ? null
        : AwsApiGatewayEventRequestContextIdentity.fromJson(
            json['identity'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AwsApiGatewayEventRequestContextToJson(
    AwsApiGatewayEventRequestContext instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('accountId', instance.accountId);
  writeNotNull('resourceId', instance.resourceId);
  writeNotNull('stage', instance.stage);
  writeNotNull('requestId', instance.requestId);
  writeNotNull('resourcePath', instance.resourcePath);
  writeNotNull('httpMethod', instance.httpMethod);
  writeNotNull('apiId', instance.apiId);
  writeNotNull('identity', instance.identity);
  return val;
}

AwsApiGatewayEventRequestContextIdentity
    _$AwsApiGatewayEventRequestContextIdentityFromJson(
        Map<String, dynamic> json) {
  return AwsApiGatewayEventRequestContextIdentity(
    cognitoIdentityPoolId: json['cognitoIdentityPoolId'] as String?,
    cognitoAuthenticationProvider:
        json['cognitoAuthenticationProvider'] as String?,
    cognitoAuthenticationType: json['cognitoAuthenticationType'] as String?,
    caller: json['caller'] as String?,
    accountId: json['accountId'] as String?,
    cognitoIdentityId: json['cognitoIdentityId'] as String?,
    apiKey: json['apiKey'] as String?,
    sourceIp: json['sourceIp'] as String?,
    user: json['user'] as String?,
    userAgent: json['userAgent'] as String?,
    userArn: json['userArn'] as String?,
  );
}

Map<String, dynamic> _$AwsApiGatewayEventRequestContextIdentityToJson(
    AwsApiGatewayEventRequestContextIdentity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cognitoIdentityPoolId', instance.cognitoIdentityPoolId);
  writeNotNull('accountId', instance.accountId);
  writeNotNull('cognitoIdentityId', instance.cognitoIdentityId);
  writeNotNull('caller', instance.caller);
  writeNotNull('apiKey', instance.apiKey);
  writeNotNull('sourceIp', instance.sourceIp);
  writeNotNull('cognitoAuthenticationType', instance.cognitoAuthenticationType);
  writeNotNull(
      'cognitoAuthenticationProvider', instance.cognitoAuthenticationProvider);
  writeNotNull('userArn', instance.userArn);
  writeNotNull('userAgent', instance.userAgent);
  writeNotNull('user', instance.user);
  return val;
}
