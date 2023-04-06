import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/env.dart';

part 'init_data.freezed.dart';
part 'init_data.g.dart';

@freezed
class InitData with _$InitData {
  const  InitData._();

  const factory InitData({
    @Default('') String accessToken,
    @Default('') String screen,
    @Default('') String app,
    @Default(Env.dev) String env,
    @Default(0) int initInboxId,
  }) = _InitData;



  factory InitData.fromJson(Map<String, dynamic> json) =>
      _$InitDataFromJson(json);

  bool get hasInitInbox => initInboxId != 0;
}