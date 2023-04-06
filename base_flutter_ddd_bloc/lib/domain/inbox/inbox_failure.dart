import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inbox_failure.freezed.dart';

@freezed
class InboxFailure with _$InboxFailure {
  const factory InboxFailure.unexpected() = InboxFailureUnexpected;
  const factory InboxFailure.serverError(String message) = InboxFailureServerError;
}