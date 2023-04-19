import 'package:base_flutter_ddd_bloc/application/core/constants.dart';
import 'package:base_flutter_ddd_bloc/domain/student/student.dart';
import 'package:base_flutter_ddd_bloc/presentation/route/app_route.dart';
import 'package:flutter/material.dart';
import '../core/style.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, required this.student}) : super(key: key);

  final Student student;

  static show(BuildContext context, Student student) {
    return Navigator.pushNamed(
      context,
      RouteName.detail,
      arguments: <String, dynamic>{Constant.student: student},
    );
  }

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  // final InboxDetailBloc bloc = GetIt.I.get();

  @override
  void initState() {
    // bloc.add(InboxDetailEvent.getDetail(widget.item.id));

    print("init detail page");

    super.initState();
  }

  @override
  void dispose() {
    // bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      appBar: AppBar(
        leading: const CloseButton(),
        title: Text("Student detail"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Student id:${widget.student.id}"),
          Text("Student name:${widget.student.name}"),
          Text("Student description:${widget.student.description}")
        ],
      ),
      // body: BlocBuilder<InboxDetailBloc, InboxDetailState>(
      //   bloc: bloc,
      //   builder: (context, state) {
      //     return state.map(
      //       initial: (_) => Container(),
      //       loading: (_) => const LoadingView(),
      //       loadFailure: (state) => FailureView(),
      //       loadSuccess: (state) => DetailBody(data: state.data),
      //     );
      //   },
      // ),
    );
  }
}

class DetailBody extends StatelessWidget {
  const DetailBody({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Student data;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Text("detail")
      ),
    );
  }
}
