import 'package:base_flutter_ddd_bloc/application/home/home_bloc.dart';
import 'package:base_flutter_ddd_bloc/application/home/home_event.dart';
import 'package:base_flutter_ddd_bloc/application/inbox_detail/inbox_detail_event.dart';
import 'package:base_flutter_ddd_bloc/application/inbox_detail/inbox_detail_state.dart';
import 'package:base_flutter_ddd_bloc/domain/inbox/i_inbox_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@injectable
class InboxDetailBloc extends Bloc<InboxDetailEvent, InboxDetailState> {
  InboxDetailBloc() : super(const InboxDetailState.initial()) {
    on<InboxDetailEvent>((event, emit) async {
      await event.map(getDetail: (event) => getDetail(event, emit));
    });
  }

  getDetail(InboxDetailEvent event, Emitter<InboxDetailState> emit) async {
    emit(const InboxDetailState.loading());

    emit((await GetIt.I.get<IInboxRepository>().detail(event.inboxId))
        .fold((l) => InboxDetailState.loadFailure(l), (r) {
      GetIt.I.get<HomeBloc>().add(const HomeEvent.getUnread());
      return InboxDetailState.loadSuccess(r);
    }));
  }
}
