import 'package:base_flutter_ddd_bloc/application/home/home_bloc.dart';
import 'package:base_flutter_ddd_bloc/application/home/home_event.dart';
import 'package:base_flutter_ddd_bloc/application/home/home_state.dart';
import 'package:base_flutter_ddd_bloc/presentation/core/style.dart';
import 'package:base_flutter_ddd_bloc/presentation/widgets/loading_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'student_list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: GetIt.I.get()..add(const HomeEvent.getDataForApp()),
      builder: (context, state) {
        return Scaffold(
            backgroundColor: Palette.bgListStudent,
            appBar: AppBar(
              elevation: 1,
              shadowColor: Palette.shadowAppBar,
              title: Text("Student"),
              centerTitle: true,
            ),
            body: state.hasToken ? const StudentListView() : const LoadingView()
            // body: Text("Abc"),
            );
      },
    );
  }
}
