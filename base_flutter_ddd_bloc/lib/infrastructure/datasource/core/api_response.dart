import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';

@freezed
class APIResponse with _$APIResponse {
  const factory APIResponse({
    @Default({}) final Map<String, dynamic> data,
  }) = _APIResponse;
}
