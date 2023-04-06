import 'package:base_flutter_ddd_bloc/domain/core/inbox_type.dart';
import 'package:base_flutter_ddd_bloc/infrastructure/datasource/core/api_response.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../../application/core/constants.dart';
import '../../../domain/inbox/inbox_detail.dart';
import '../../../domain/inbox/unread.dart';
import '../core/api_handler.dart';
import '../core/api_path.dart';

@singleton
class InboxDS {
  Future<List<dynamic>> getList(int type, int page) async {
    String url = '${APIPath.inbox}?${Constant.page}=$page';

    if (type != InboxType.all) {
      url += '&${Constant.type}=$type';
    }

    APIResponse apiResponse = await GetIt.I.get<APIHandler>().callGet(url);

    return apiResponse.data[Constant.data] ?? [];
  }

  Future<InboxDetail> detail(int inboxId) async {
    APIResponse apiResponse = await GetIt.I.get<APIHandler>().callPost(
      APIPath.inboxDetail,
      {Constant.id: inboxId},
    );

    return InboxDetail.fromJson(apiResponse.data[Constant.data]);
  }

  Future<Unread> getUnReadNumber() async {
    APIResponse apiResponse =
    await GetIt.I.get<APIHandler>().callGet(APIPath.typeUnread);

    return Unread.fromJson(apiResponse.data);
  }
}
