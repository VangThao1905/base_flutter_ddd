import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import 'home_event.dart';
import 'home_state.dart';

@singleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      await event.map(
          update: (event) async => emit(state.copyWith(
              all: event.all,
              notification: event.notification,
              promotion: event.promotion)),
          getDataForApp: (event) => getDataForApp(event, emit));
    });
  }

  getDataForApp(HomeEventGetDataForApp event, Emitter<HomeState> emit) async {
    // await GetIt.I.get<INativeRepository>().getData();

    emit(state.copyWith(hasToken: true));
  }
}
