import 'package:base_flutter_ddd_bloc/application/add_student/add_student_state.dart';
import 'package:base_flutter_ddd_bloc/application/core/constants.dart';
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

import '../../../application/add_student/add_student_cubit.dart';
import '../../route/app_route.dart';

class AddStudentPage extends StatefulWidget {
  const AddStudentPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AddStudentPage();

  static show(BuildContext context) {
    return Navigator.pushNamed(
      context,
      RouteName.addStudent,
    );
  }
}

class _AddStudentPage extends State<AddStudentPage> {
  final AddStudentCubit _addStudentCubit = GetIt.I.get<AddStudentCubit>();

  final GlobalKey<FormState> _formKey = GlobalKey();
  List<String> _filedNames = [];
  final Map<String, TextEditingController> _controllers = {};

  @override
  void initState() {
    _initFieldsController();
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _addStudentCubit.init();
    });
  }

  void _initFieldsController() {
    _filedNames = ['id', 'name', 'description'];
    for (var element in _filedNames) {
      _controllers[element] = TextEditingController();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text("Add student"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocConsumer<AddStudentCubit, AddStudentState>(
          builder: (context, state) {
            return studentEditForm();
          },
          listener: (context, state) => _listenUpdateStatus(state),
          bloc: _addStudentCubit,
          buildWhen: (previous, next) => previous.addStatus != next.addStatus,
          listenWhen: (previous, next) => previous.addStatus != next.addStatus,
        ),
      ),
    );
    // return Dialog(
    //
    // );
  }

  Widget studentEditForm() {
    // loadStudentData();
    print('load id:${_controllers['id']?.text.toString()}');
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _controllers['name'],
            decoration: const InputDecoration(hintText: "Name"),
          ),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
            controller: _controllers['description'],
            decoration: const InputDecoration(hintText: "Description"),
          ),
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
                Student student = Student(
                    id: UniqueKey().toString(),
                    name: name,
                    description: description);
                _addStudentCubit.addStudent(student);
              },
              child: const Text('Add'))
        ],
      ),
    );
  }

  void _listenUpdateStatus(AddStudentState state) {
    switch (state.addStatus) {
      case ModifyStatus.processing:
        EasyLoading.show();
        break;
      case ModifyStatus.done:
        EasyLoading.dismiss();
        Fluttertoast.showToast(msg: 'Update success');
        // Navigator.pop(context);
        Navigator.pop(context);
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
