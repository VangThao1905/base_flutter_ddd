import 'package:base_flutter_ddd_bloc/domain/inbox/inbox_detail.dart';
import 'package:base_flutter_ddd_bloc/domain/inbox/inbox_failure.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inbox_detail_state.freezed.dart';

@freezed
class InboxDetailState with _$InboxDetailState {
  const factory InboxDetailState.initial() = InboxDetailStateInitial;
  const factory InboxDetailState.loading() = InboxDetailStateLoading;
  const factory InboxDetailState.loadSuccess(InboxDetail data) = InboxDetailStateLoadSuccess;
  const factory InboxDetailState.loadFailure(InboxFailure error) = InboxDetailStateFailure;
}