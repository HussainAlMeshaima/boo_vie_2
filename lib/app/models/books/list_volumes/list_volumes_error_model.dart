import 'dart:convert';

import 'package:flutter/foundation.dart';

class ListVolumesErrorModel {
  final Error error;
  ListVolumesErrorModel({
    required this.error,
  });

  ListVolumesErrorModel copyWith({
    Error? error,
  }) {
    return ListVolumesErrorModel(
      error: error ?? this.error,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'error': error.toMap(),
    };
  }

  factory ListVolumesErrorModel.fromMap(Map<String, dynamic> map) {
    return ListVolumesErrorModel(
      error: Error.fromMap(map['error']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ListVolumesErrorModel.fromJson(String source) =>
      ListVolumesErrorModel.fromMap(json.decode(source));

  @override
  String toString() => 'ListVolumesErrorModel(error: $error)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ListVolumesErrorModel && other.error == error;
  }

  @override
  int get hashCode => error.hashCode;
}

class Error {
  final int? code;
  final String? message;
  final List<Error>? errors;

  Error({
    required this.code,
    required this.message,
    required this.errors,
  });

  Error copyWith({
    int? code,
    String? message,
    List<Error>? errors,
  }) {
    return Error(
      code: code ?? this.code,
      message: message ?? this.message,
      errors: errors ?? this.errors,
    );
  }

  Map<String, dynamic> toMap() {
    List<Error>? newListOfErrors = errors;
    newListOfErrors ??= [];
    return {
      'code': code,
      'message': message,
      'errors': newListOfErrors.map((x) => x.toMap()).toList(),
    };
  }

  factory Error.fromMap(Map<String, dynamic> map) {
    return Error(
      code: map['code']?.toInt() ?? 0,
      message: map['message'] ?? '',
      errors: List<Error>.from(map['errors']?.map((x) => Error.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Error.fromJson(String source) => Error.fromMap(json.decode(source));

  @override
  String toString() => 'Error(code: $code, message: $message, errors: $errors)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Error &&
        other.code == code &&
        other.message == message &&
        listEquals(other.errors, errors);
  }

  @override
  int get hashCode => code.hashCode ^ message.hashCode ^ errors.hashCode;
}

class Errors {
  final String? message;
  final String? domain;
  final String? reason;
  final String? location;
  final String? locationType;
  Errors({
    this.message,
    this.domain,
    this.reason,
    this.location,
    this.locationType,
  });

  Errors copyWith({
    String? message,
    String? domain,
    String? reason,
    String? location,
    String? locationType,
  }) {
    return Errors(
      message: message ?? this.message,
      domain: domain ?? this.domain,
      reason: reason ?? this.reason,
      location: location ?? this.location,
      locationType: locationType ?? this.locationType,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'message': message,
      'domain': domain,
      'reason': reason,
      'location': location,
      'locationType': locationType,
    };
  }

  factory Errors.fromMap(Map<String, dynamic> map) {
    return Errors(
      message: map['message'] ?? '',
      domain: map['domain'] ?? '',
      reason: map['reason'] ?? '',
      location: map['location'] ?? '',
      locationType: map['locationType'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Errors.fromJson(String source) => Errors.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Error(message: $message, domain: $domain, reason: $reason, location: $location, locationType: $locationType)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Errors &&
        other.message == message &&
        other.domain == domain &&
        other.reason == reason &&
        other.location == location &&
        other.locationType == locationType;
  }

  @override
  int get hashCode {
    return message.hashCode ^
        domain.hashCode ^
        reason.hashCode ^
        location.hashCode ^
        locationType.hashCode;
  }
}
