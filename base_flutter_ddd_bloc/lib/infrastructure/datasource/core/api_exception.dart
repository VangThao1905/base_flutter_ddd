import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_exception.freezed.dart';

@freezed
class APIException with _$APIException, Exception {
  const factory APIException({
    @Default('') final String message,
    @Default('') @JsonKey(name: "error_code") final String errorCode
  }) = _APIException;

}