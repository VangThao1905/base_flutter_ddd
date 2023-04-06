import 'package:base_flutter_ddd_bloc/domain/inbox/i_inbox_repository.dart';
import 'package:base_flutter_ddd_bloc/domain/inbox/inbox.dart';
import 'package:base_flutter_ddd_bloc/domain/inbox/inbox_detail.dart';
import 'package:base_flutter_ddd_bloc/domain/inbox/inbox_failure.dart';
import 'package:base_flutter_ddd_bloc/domain/inbox/unread.dart';
import 'package:base_flutter_ddd_bloc/infrastructure/datasource/core/api_exception.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../datasource/remote/inbox_ds.dart';
import 'inbox_mapper.dart';

@Injectable(as: IInboxRepository)
class InboxRepository implements IInboxRepository {
  final InboxDS inboxDS;

  final InboxMapper inboxMapper;

  InboxRepository(this.inboxDS, this.inboxMapper);

  @override
  Future<Either<InboxFailure, InboxDetail>> detail(int inboxId) async {
    try {
      return right(await inboxDS.detail(inboxId));
    } on APIException catch (e) {
      return left(InboxFailure.serverError(e.message));
    } catch (e) {
      return left(InboxFailure.serverError(e.toString()));
    }
  }

  @override
  Future<Either<InboxFailure, List<Inbox>>> getAll(int type, int page) async {
    try {
      return right((await inboxDS.getList(type, page))
          .map((e) => inboxMapper.toDomain(e))
          .toList());
    } on APIException catch (e) {
      print('Error inbox:$e');
      return left(InboxFailure.serverError(e.message));
    }
  }

  @override
  Future<Option<Unread>> getUnread() async {
    try {
      return optionOf((await inboxDS.getUnReadNumber()));
    } on APIException catch (e) {
      return none();
    }
  }
}
