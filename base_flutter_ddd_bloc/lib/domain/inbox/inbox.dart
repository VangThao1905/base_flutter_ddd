import 'package:freezed_annotation/freezed_annotation.dart';

part 'inbox.g.dart';
part 'inbox.freezed.dart';

@freezed
class Inbox with _$Inbox {
  const Inbox._();

  const factory Inbox({
    @Default(0) int id,
    @Default(0) int type,
    @Default('') String dateTime,
    @Default('') String link,
    @Default('') String content,
    @Default('') String buttonContent,
    @Default(false) bool read,
  }) = _Inbox;

  factory Inbox.fromJson(Map<String, dynamic> json) => _$InboxFromJson(json);

  bool get isEmpty => id == 0;
}
