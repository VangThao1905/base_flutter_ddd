import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inbox_event.freezed.dart';

@freezed
class InboxEvent with _$InboxEvent {
  const factory InboxEvent.fetch(int type, int pageKey) = InboxEventFetch;

  const factory InboxEvent.init(int type) = InboxEventInit;

  const factory InboxEvent.refresh(int type) = InboxEventRefresh;

  const factory InboxEvent.read(int inboxId) = InboxEventRead;
}