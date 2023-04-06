import 'package:base_flutter_ddd_bloc/application/core/constants.dart';
import 'package:base_flutter_ddd_bloc/application/inbox/inbox_bloc.dart';
import 'package:base_flutter_ddd_bloc/application/inbox/inbox_event.dart';
import 'package:base_flutter_ddd_bloc/application/inbox/inbox_state.dart';
import 'package:base_flutter_ddd_bloc/domain/core/inbox_type.dart';
import 'package:base_flutter_ddd_bloc/domain/inbox/inbox.dart';
import 'package:base_flutter_ddd_bloc/l10n/app_localizations.dart';
import 'package:base_flutter_ddd_bloc/presentation/core/style.dart';
import 'package:base_flutter_ddd_bloc/presentation/detail/detail_page.dart';
import 'package:base_flutter_ddd_bloc/presentation/widgets/failure_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'item_inbox_view.dart';

class InboxListView extends StatefulWidget {

  final int fetchInboxType;

  const InboxListView({Key? key, required this.fetchInboxType})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _InboxListViewState();

}

class _InboxListViewState extends State<InboxListView> {
  late InboxBloc bloc;
  late AppLocalizations language;

  @override
  void initState() {
    bloc = GetIt.I.get(instanceName: inboxNameByType(widget.fetchInboxType));

    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      bloc.add(InboxEvent.init(widget.fetchInboxType));
    });
    super.initState();
  }

  @override
  void dispose() {
    // bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme
        .of(context)
        .textTheme;
    language = AppLocalizations.of(context)!;

    // return Center(child: Text("A"),);

    return RefreshIndicator(child: BlocBuilder<InboxBloc, InboxState>(
      bloc:bloc,
      builder:(context, state){
        if (state.errorMessage.isNotEmpty) {
          return ListView(
            shrinkWrap: true,
            children: [
              const SizedBox(height: 52),
              FailureView(),
            ],
          );
        }

        return PagedListView<int, Inbox>.separated(
          pagingController: state.pageController!,
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(height: 1, thickness: 1);
          },
          builderDelegate: PagedChildBuilderDelegate<Inbox>(
            itemBuilder: (context, item, index) => ItemInboxView(
              item: item,
              onPressedItem: (Inbox item) {
                bloc.add(InboxEventRead(item.id));
                if (widget.fetchInboxType != InboxType.all) {
                  GetIt.I
                      .get<InboxBloc>(instanceName: Constant.inboxAll)
                      .add(InboxEvent.read(item.id));
                }
                DetailPage.show(context, item.id);
              },
            ),
            noItemsFoundIndicatorBuilder: (context) {
              return Container(
                padding: const EdgeInsets.only(top: 145),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.no_accounts),
                    const SizedBox(height: 8),
                    Text(
                      language.noInbox,
                      style: textTheme.subtitle1?.copyWith(
                        color: Palette.textNote,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        );
      }
    ), onRefresh: () async {
      bloc.add(InboxEvent.refresh(widget.fetchInboxType));
    });
  }

  inboxNameByType(int fetchInboxType) {
    switch (fetchInboxType) {
      case InboxType.all:
        return Constant.inboxAll;
      case InboxType.notification:
        return Constant.inboxNotification;
      case InboxType.promotion:
        return Constant.inboxPromotion;
    }
  }
}