import 'package:base_flutter_ddd_bloc/application/home/home_bloc.dart';
import 'package:base_flutter_ddd_bloc/application/home/home_event.dart';
import 'package:base_flutter_ddd_bloc/application/inbox/inbox_event.dart';
import 'package:base_flutter_ddd_bloc/application/inbox/inbox_state.dart';
import 'package:base_flutter_ddd_bloc/domain/inbox/i_inbox_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';

class InboxBloc extends Bloc<InboxEvent, InboxState> {
  InboxBloc() : super(InboxState.initial()) {
    on<InboxEvent>((event, emit) async {
      await event.map(
          fetch: (event) => fetching(event, emit),
          init: (event) => init(event, emit),
          refresh: (event) => refresh(event, emit),
          read: (event) => read(event, emit));
    });
  }

  fetching(InboxEventFetch event, Emitter<InboxState> emit) async {
    var inboxEither =
        await GetIt.I.get<IInboxRepository>().getAll(event.type, event.pageKey);

    inboxEither.fold((l) {
      l.map(
          unexpected: (e) => emit(state.copyWith(errorMessage: '')),
          serverError: (e) => emit(state.copyWith(errorMessage: e.message)));
    }, (r) {
      if (r.length < 10) {
        state.pageController?.appendLastPage(r);
      } else {
        state.pageController?.appendPage(r, event.pageKey + 1);
      }
    });
  }

  refresh(InboxEventRefresh event, Emitter<InboxState> emit) async {
    state.pageController?.refresh();
    emit(state.copyWith(errorMessage: ''));
  }

  init(InboxEventInit event, Emitter<InboxState> emit) {
    HomeBloc bloc = GetIt.I.get();

    state.pageController?.addPageRequestListener((pageKey) {
      add(InboxEvent.fetch(event.type, pageKey));
      bloc.add(const HomeEvent.getUnread());
    });

    add(InboxEvent.fetch(event.type, 1));
  }

  read(InboxEventRead event, Emitter<InboxState> emit) {
    if (state.pageController == null) {
      return;
    }

    state.pageController?.itemList = state.pageController?.itemList
        ?.map((e) => e.id == event.inboxId ? e.copyWith(read: true) : e)
        .toList();
  }

  @override
  Future<void> close() {
    state.pageController?.dispose();
    return super.close();
  }
}
