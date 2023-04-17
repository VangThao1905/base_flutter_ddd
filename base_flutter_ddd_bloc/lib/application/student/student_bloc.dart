import 'package:base_flutter_ddd_bloc/application/home/home_bloc.dart';
import 'package:base_flutter_ddd_bloc/application/student/student_event.dart';
import 'package:base_flutter_ddd_bloc/application/student/student_state.dart';
import 'package:base_flutter_ddd_bloc/domain/student/i_student_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  StudentBloc() : super(StudentState.initial()) {
    on<StudentEvent>((event, emit) async {
      await event.map(
          fetch: (event) => fetching(event, emit),
          init: (event) => init(event, emit),
          refresh: (event) => refresh(event, emit));
    });
  }

  fetching(StudentEventFetch event, Emitter<StudentState> emit) async {
    print("fetching student");
    var inboxEither =
        await GetIt.I.get<IStudentRepository>().getAll(event.pageKey);

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

  refresh(StudentEventRefresh event, Emitter<StudentState> emit) async {
    state.pageController?.refresh();
    emit(state.copyWith(errorMessage: ''));
  }

  init(StudentEventInit event, Emitter<StudentState> emit) {
    HomeBloc bloc = GetIt.I.get();

    state.pageController?.addPageRequestListener((pageKey) {
      add(StudentEvent.fetch(pageKey));
    });

    add(const StudentEvent.fetch(1));
  }

  @override
  Future<void> close() {
    state.pageController?.dispose();
    return super.close();
  }
}
