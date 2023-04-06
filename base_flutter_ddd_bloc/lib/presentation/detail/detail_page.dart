import 'package:base_flutter_ddd_bloc/application/core/constants.dart';
import 'package:base_flutter_ddd_bloc/application/inbox_detail/inbox_detail_bloc.dart';
import 'package:base_flutter_ddd_bloc/application/inbox_detail/inbox_detail_event.dart';
import 'package:base_flutter_ddd_bloc/application/inbox_detail/inbox_detail_state.dart';
import 'package:base_flutter_ddd_bloc/domain/core/inbox_type.dart';
import 'package:base_flutter_ddd_bloc/domain/inbox/inbox.dart';
import 'package:base_flutter_ddd_bloc/domain/inbox/inbox_detail.dart';
import 'package:base_flutter_ddd_bloc/presentation/core/tool.dart';
import 'package:base_flutter_ddd_bloc/presentation/route/app_route.dart';
import 'package:base_flutter_ddd_bloc/presentation/widgets/failure_view.dart';
import 'package:base_flutter_ddd_bloc/presentation/widgets/loading_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get_it/get_it.dart';

import '../../l10n/app_localizations.dart';
import '../core/style.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, required this.item}) : super(key: key);

  final Inbox item;

  static show(BuildContext context, int inboxId) {
    return Navigator.pushNamed(
      context,
      RouteName.detail,
      arguments: <String, dynamic>{Constant.inboxId: inboxId},
    );
  }

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late AppLocalizations language;

  final InboxDetailBloc bloc = GetIt.I.get();

  @override
  void initState() {
    bloc.add(InboxDetailEvent.getDetail(widget.item.id));

    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    language = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: Palette.background,
      appBar: AppBar(
        leading: const CloseButton(),
        title: Text(
          language.detail +
              (widget.item.type == InboxType.notification
                  ? language.notification
                  : language.offer),
        ),
      ),
      body: BlocBuilder<InboxDetailBloc, InboxDetailState>(
        bloc: bloc,
        builder: (context, state) {
          return state.map(
            initial: (_) => Container(),
            loading: (_) => const LoadingView(),
            loadFailure: (state) => FailureView(),
            loadSuccess: (state) => DetailBody(data: state.data),
          );
        },
      ),
      bottomNavigationBar: BlocBuilder<InboxDetailBloc, InboxDetailState>(
        bloc: bloc,
        builder: (context, state) {
          if (state is InboxDetailStateLoadSuccess) {
            if (state.data.titleButton.isEmpty) {
              return Container(height: 0);
            }
            return Container(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 12,
                bottom: 46,
              ),
              decoration: const BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Palette.shadow,
                    blurRadius: 24,
                    offset: Offset(0, 3),
                  ),
                ],
                color: Palette.background,
              ),
              child: OutlinedButton(
                onPressed: () => Tool.openLink(state.data.linkButton),
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size.fromHeight(48),
                ),
                child: Text(state.data.titleButton),
              ),
            );
          }
          return Container(height: 0);
        },
      ),
    );
  }
}

class DetailBody extends StatelessWidget {
  const DetailBody({
    Key? key,
    required this.data,
  }) : super(key: key);

  final InboxDetail data;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Html(
          // data.content,
          // renderMode: RenderMode.listView,
          // textStyle: textTheme.subtitle1,
          data: data.content,
          shrinkWrap: true,
        ),
      ),
    );
  }
}
