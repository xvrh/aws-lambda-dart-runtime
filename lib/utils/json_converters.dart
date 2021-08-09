import 'package:json_annotation/json_annotation.dart';

class PermissiveIntConverter implements JsonConverter<int, dynamic> {
  const PermissiveIntConverter();

  @override
  int fromJson(json) {
    if (json is String) {
      return num.parse(json).toInt();
    } else if (json is num) {
      return json.toInt();
    } else {
      throw Exception(
          'Json converter exception: Expected int got ${json.runtimeType}');
    }
  }

  @override
  dynamic toJson(int object) {
    return object;
  }
}

class PermissiveNullableIntConverter implements JsonConverter<int?, dynamic> {
  const PermissiveNullableIntConverter();

  @override
  int? fromJson(json) {
    if (json == null) {
      return null;
    }
    return const PermissiveIntConverter().fromJson(json);
  }

  @override
  dynamic toJson(int? object) {
    return object;
  }
}

class PermissiveBoolConverter implements JsonConverter<bool, dynamic> {
  const PermissiveBoolConverter();

  @override
  bool fromJson(json) {
    if (json == null) {
      return false;
    } else if (json is bool) {
      return json;
    } else if (json is String) {
      return json == 'true';
    } else if (json is num) {
      return json != 0;
    } else {
      throw Exception(
          'Json converter exception: Expected int got ${json.runtimeType}');
    }
  }

  @override
  dynamic toJson(bool object) {
    return object;
  }
}
