import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'unread.freezed.dart';

part 'unread.g.dart';

@freezed
class Unread with _$Unread {
  const factory Unread(
      {@Default(true) bool notification,
      @Default(false) bool promotion}) = _Unread;

  factory Unread.fromJson(Map<String, dynamic> json) => _$UnreadFromJson(json);
}
