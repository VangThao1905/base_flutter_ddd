import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.freezed.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getDataForApp() = HomeEventGetDataForApp;

  const factory HomeEvent.update(bool all, bool notification, bool promotion) =
  HomeEventUpdate;
}
