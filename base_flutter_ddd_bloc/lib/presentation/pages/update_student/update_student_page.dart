import 'package:base_flutter_ddd_bloc/application/core/constants.dart';
import 'package:base_flutter_ddd_bloc/application/update_student/update_student_cubit.dart';
import 'package:base_flutter_ddd_bloc/application/update_student/update_student_state.dart';
import 'package:base_flutter_ddd_bloc/domain/core/load_data_status.dart';
import 'package:base_flutter_ddd_bloc/domain/core/modify_status.dart';
import 'package:base_flutter_ddd_bloc/domain/student/student.dart';
import 'package:base_flutter_ddd_bloc/presentation/widgets/failure_view.dart';
import 'package:base_flutter_ddd_bloc/presentation/widgets/loading_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_it/get_it.dart';

import '../../route/app_route.dart';

class UpdateStudentPage extends StatefulWidget {
  final Student student;

  const UpdateStudentPage({Key? key, required this.student}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AddStudentPage();

  static show(BuildContext context, Student student) {
    return Navigator.pushNamed(
      context,
      RouteName.studentEdit,
      arguments: <String, dynamic>{Constant.student: student},
    );
  }
}

class _AddStudentPage extends State<UpdateStudentPage> {
  final UpdateStudentCubit _studentUpdateCubit =
      GetIt.I.get<UpdateStudentCubit>();

  final GlobalKey<FormState> _formKey = GlobalKey();
  List<String> _filedNames = [];
  final Map<String, TextEditingController> _controllers = {};

  @override
  void initState() {
    _initFieldsController();
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _studentUpdateCubit.init(widget.student);
      loadStudentData();
    });
  }

  void _initFieldsController() {
    _filedNames = ['id', 'name', 'description'];
    for (var element in _filedNames) {
      _controllers[element] = TextEditingController();
    }
  }

  void loadStudentData() {
    final UpdateStudentState state = _studentUpdateCubit.getState();
    _controllers['id']?.text = state.id.toString();
    _controllers['name']?.text = state.name;
    _controllers['description']?.text = state.description;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text("Update student"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocConsumer<UpdateStudentCubit, UpdateStudentState>(
          builder: (context, state) {
            switch (state.initStatus) {
              case LoadDataStatus.loading:
                return const LoadingView();
              case LoadDataStatus.success:
                return studentEditForm();
              case LoadDataStatus.failure:
                return const Center(
                  child: Text('Loading failure'),
                );
              default:
                return const SizedBox();
            }
          },
          listener: (context, state) => _listenUpdateStatus(state),
          bloc: _studentUpdateCubit,
          buildWhen: (previous, next) => previous.initStatus != next.initStatus,
          listenWhen: (previous, next) =>
              previous.updateStatus != next.updateStatus,
        ),
      ),
    );
    // return Dialog(
    //
    // );
  }

  Widget studentEditForm() {
    loadStudentData();
    print('load id:${_controllers['id']?.text.toString()}');
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _controllers['id'],
            enabled: false,
          ),
          const SizedBox(
            height: 8,
          ),
          TextFormField(controller: _controllers['name']),
          const SizedBox(
            height: 8,
          ),
          TextFormField(controller: _controllers['description']),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                if (!_formKey.currentState!.validate()) {
                  return;
                }

                String name = _controllers['name']?.text.toString() ?? '';
                String description =
                    _controllers['description']?.text.toString() ?? '';
                _studentUpdateCubit.updateStudent(Student(
                    id: widget.student.id,
                    name: name,
                    description: description));
              },
              child: const Text('Update'))
        ],
      ),
    );
  }

  void _listenUpdateStatus(UpdateStudentState state) {
    switch (state.updateStatus) {
      case ModifyStatus.processing:
        EasyLoading.show();
        break;
      case ModifyStatus.done:
        EasyLoading.dismiss();
        Fluttertoast.showToast(msg: 'Update success');
        // Navigator.pop(context);
        Navigator.pop(context, state.student);
        break;
      case ModifyStatus.error:
        EasyLoading.dismiss();
        FailureView.show(context);
        break;
      default:
        break;
    }
  }
}
