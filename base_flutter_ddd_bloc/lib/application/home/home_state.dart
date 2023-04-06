import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState(
      {@Default(false) bool hasToken,
      @Default(false) bool all,
      @Default(false) bool notification,
      @Default(false) bool promotion}) = _HomeState;

  factory HomeState.initial() => HomeState(
      all: false, notification: false, promotion: false, hasToken: false);
}
