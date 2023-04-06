import 'package:base_flutter_ddd_bloc/domain/core/inbox_type.dart';
import 'package:base_flutter_ddd_bloc/domain/inbox/inbox.dart';
import 'package:base_flutter_ddd_bloc/presentation/core/style.dart';
import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';
import '../core/tool.dart';

class ItemInboxView extends StatelessWidget {
  const ItemInboxView({
    Key? key,
    required this.item,
    required this.onPressedItem,
  }) : super(key: key);

  final Inbox item;
  final Function(Inbox item) onPressedItem;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    AppLocalizations language = AppLocalizations.of(context)!;

    return GestureDetector(
      onTap: () => onPressedItem(item),
      behavior: HitTestBehavior.translucent,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        color: Palette.background,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _iconByInboxType(item),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.content,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: textTheme.subtitle1?.copyWith(
                                height: 22 / 16,
                                fontWeight: item.read
                                    ? FontWeight.w400
                                    : FontWeight.w700,
                                color:
                                    item.read ? Palette.read : Palette.unRead,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              dateByType(item, language),
                              style: textTheme.subtitle1?.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                height: 18 / 13,
                                color: colorByType(item),
                              ),
                            ),
                            Visibility(
                              visible: item.buttonContent.isNotEmpty &&
                                  item.type == InboxType.promotion,
                              child: Container(
                                margin: const EdgeInsets.only(top: 11),
                                child: OutlinedButton(
                                  onPressed: () => onPressedItem(item),
                                  style: OutlinedButton.styleFrom(
                                    minimumSize: const Size(112, 30),
                                    // fixedSize: const Size.fromHeight(30),
                                  ),
                                  child: Text(item.buttonContent),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Visibility(
              visible: !item.read,
              child: const CircleAvatar(maxRadius: 6),
            ),
          ],
        ),
      ),
    );
  }

  _iconByInboxType(Inbox item) {
    if (item.type == InboxType.notification) {
      return Icon(
        item.read
            ? Icons.notifications_active
            : Icons.notifications_active_sharp,
        size: 40,
      );
    } else {
      return Icon(
        item.read ? Icons.mark_email_read : Icons.mark_email_unread,
        size: 40,
      );
    }
  }

  bool checkExpire(Inbox item) {
    int time = Tool.millisecondFromStringTime(item.dateTime);
    int timeRemain = time - DateTime.now().millisecondsSinceEpoch;
    return timeRemain > 0 && timeRemain < 24 * 60 * 60 * 1000;
  }

  String dateByType(Inbox item, AppLocalizations language) {
    String expired = '';
    if (item.type == InboxType.notification) {
      return Tool.convertTime(item.dateTime,
          format: checkExpire(item) ? 'HH:mm a' : 'dd MMM');
    }

    if (checkExpire(item)) {
      expired = ' (${language.expiredSoon})';
    }

    return (item.type == InboxType.promotion ? 'HSD: ' : '') +
        Tool.convertTime(item.dateTime, format: 'dd/MM/yyyy') +
        expired;
  }

  Color colorByType(Inbox item) {
    int time = Tool.millisecondFromStringTime(item.dateTime);
    int timeRemain = time - DateTime.now().millisecondsSinceEpoch;

    if (item.type == InboxType.promotion && timeRemain > 0) {
      return Palette.badge;
    }
    return Palette.textGray;
  }
}
