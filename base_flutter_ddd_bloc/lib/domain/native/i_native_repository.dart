import 'package:base_flutter_ddd_bloc/domain/init_data/init_data.dart';

abstract class INativeRepository {
  Future<void> closeApp();

  Future<InitData> getData();
}
