import 'package:base_flutter_ddd_bloc/domain/inbox/inbox.dart';
import 'package:base_flutter_ddd_bloc/domain/inbox/unread.dart';
import 'package:dartz/dartz.dart';

import 'inbox_detail.dart';
import 'inbox_failure.dart';

abstract class IInboxRepository {
  Future<Either<InboxFailure, List<Inbox>>> getAll(int type, int page);

  Future<Option<Unread>> getUnread();

  Future<Either<InboxFailure, InboxDetail>> detail(int inboxId);
}
