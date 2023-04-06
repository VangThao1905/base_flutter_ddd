import 'package:badges/badges.dart' as badges;
import 'package:base_flutter_ddd_bloc/application/home/home_bloc.dart';
import 'package:base_flutter_ddd_bloc/application/home/home_event.dart';
import 'package:base_flutter_ddd_bloc/application/home/home_state.dart';
import 'package:base_flutter_ddd_bloc/domain/core/inbox_type.dart';
import 'package:base_flutter_ddd_bloc/presentation/core/style.dart';
import 'package:base_flutter_ddd_bloc/presentation/widgets/loading_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../../l10n/app_localizations.dart';
import 'inbox_list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AppLocalizations language;

  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    language = AppLocalizations.of(context)!;

    return BlocBuilder<HomeBloc, HomeState>(
      bloc: GetIt.I.get()..add(const HomeEvent.getDataForApp()),
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Palette.bgListInbox,
          appBar: AppBar(
            leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios_rounded),
                onPressed: () => print("Back click")),
            elevation: 1,
            shadowColor: Palette.shadowAppBar,
            title: Text(language.inbox),
            actions: [
              IconButton(
                  onPressed: onPressedSetting,
                  icon: Icon(
                    Icons.settings,
                    size: 24,
                  ))
            ],
            bottom: TabBar(
              controller: tabController,
              onTap: (index) {
                GetIt.I.get<HomeBloc>().add(const HomeEvent.getUnread());
              },
              tabs: [
                TabWidget(
                  label: language.all,
                  showBadge: state.all,
                ),
                TabWidget(
                  label: language.notification,
                  showBadge: state.notification,
                ),
                TabWidget(
                  label: language.offer,
                  showBadge: state.promotion,
                ),
              ],
            ),
          ),
          body: TabBarView(
            controller: tabController,
            physics: const NeverScrollableScrollPhysics(),
            children: state.hasToken
                ? [
                    const InboxListView(fetchInboxType: InboxType.all),
                    const InboxListView(fetchInboxType: InboxType.notification),
                    const InboxListView(fetchInboxType: InboxType.promotion),
                  ]
                : [
                    const LoadingView(),
                    const LoadingView(),
                    const LoadingView(),
                  ],
          ),
          // body: Text("Abc"),
        );
      },
    );
  }

  onPressedSetting() => print("press seting");
}

class TabWidget extends StatelessWidget {
  const TabWidget({Key? key, required this.label, required this.showBadge})
      : super(key: key);

  final String label;
  final bool showBadge;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: badges.Badge(
        elevation: 0,
        badgeColor: Palette.badge,
        padding: const EdgeInsets.all(4),
        ignorePointer: true,
        position: badges.BadgePosition.topEnd(top: 0, end: -12),
        showBadge: showBadge,
        child: Text(label),
      ),
    );
  }
}
