import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inbox_detail_event.freezed.dart';

@freezed
class InboxDetailEvent with _$InboxDetailEvent {
  const factory InboxDetailEvent.getDetail(int inboxId) =
      InboxDetailEventGetDetail;
}
