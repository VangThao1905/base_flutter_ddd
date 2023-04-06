import 'dart:convert';

import 'package:base_flutter_ddd_bloc/application/core/constants.dart';
import 'package:base_flutter_ddd_bloc/domain/core/inbox_type.dart';
import 'package:base_flutter_ddd_bloc/domain/inbox/inbox.dart';
import 'package:injectable/injectable.dart';

@singleton
class InboxMapper {
  Inbox toDomain(Map<String, dynamic> jsonData) {
    return Inbox(
        id: jsonData[Constant.id],
        type: jsonData[Constant.type],
        dateTime: jsonData[Constant.type] == InboxType.notification
            ? jsonData[Constant.inbox] == null
                ? ''
                : jsonData[Constant.inbox][Constant.createdAtSnake] ?? ''
            : jsonData[Constant.promoExpireDateSnake] ?? '',
        link: '',
        content: jsonData[Constant.inbox][Constant.campaign],
        buttonContent: jsonData[Constant.listTitleButtonSnake] ?? '',
        read: jsonData[Constant.markAsReadSnake]);
  }
}
