import 'package:base_flutter_ddd_bloc/domain/inbox/i_inbox_repository.dart';
import 'package:base_flutter_ddd_bloc/domain/native/i_native_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'home_event.dart';
import 'home_state.dart';

@singleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      await event.map(
          getUnread: (event) => getUnread(event, emit),
          update: (event) async => emit(state.copyWith(
              all: event.all,
              notification: event.notification,
              promotion: event.promotion)),
          getDataForApp: (event) => getDataForApp(event, emit));
    });
  }

  getUnread(HomeEventGetUnread event, Emitter<HomeState> emit) async {
    (await GetIt.I.get<IInboxRepository>().getUnread()).fold(
        () {},
        (unread) => add(HomeEvent.update(
            unread.notification || unread.promotion,
            unread.notification,
            unread.promotion)));
  }

  getDataForApp(HomeEventGetDataForApp event, Emitter<HomeState> emit) async {
    // await GetIt.I.get<INativeRepository>().getData();

    emit(state.copyWith(hasToken: true));

    add(const HomeEvent.getUnread());
  }
}
