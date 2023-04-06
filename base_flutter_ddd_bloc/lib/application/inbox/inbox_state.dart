import 'package:base_flutter_ddd_bloc/domain/inbox/inbox.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'inbox_state.freezed.dart';

@freezed
class InboxState with _$InboxState {
  const factory InboxState({
    @Default([]) List<Inbox> listInbox,
    @Default('') String errorMessage,
    PagingController<int, Inbox> ? pageController
  }) = _InboxState;

  factory InboxState.initial() =>
      InboxState(
        listInbox: [const Inbox()],
        pageController: PagingController<int, Inbox>(firstPageKey: 1),
      );
}