import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:intl/intl.dart';

class Tool {
  static openLink(
      String link,
      ) async {
    // Uri uri = Uri.parse(link);
    FlutterWebBrowser.openWebPage(
      url: link,
      customTabsOptions: const CustomTabsOptions(
        colorScheme: CustomTabsColorScheme.dark,
        shareState: CustomTabsShareState.on,
        instantAppsEnabled: true,
        showTitle: true,
        urlBarHidingEnabled: true,
      ),
      safariVCOptions: const SafariViewControllerOptions(
        barCollapsingEnabled: true,
        dismissButtonStyle: SafariViewControllerDismissButtonStyle.close,
        modalPresentationCapturesStatusBarAppearance: true,
      ),
    );
    // if (await canLaunchUrl(uri)) {
    //   launchUrl(
    //     uri,
    //     mode: mode,
    //     webViewConfiguration: const WebViewConfiguration(
    //       enableJavaScript: true,
    //     ),
    //   );
    // }
  }

  static int millisecondFromStringTime(String time) {
    try {
      List<String> dateAndDate = time.split(' ');
      List<int> date = [];
      if (dateAndDate.first.contains('-')) {
        date = dateAndDate.first
            .split('-')
            .map((e) => int.parse(e))
            .toList()
            .reversed
            .toList();
      } else {
        date = dateAndDate.first.split('/').map((e) => int.parse(e)).toList();
      }

      List<int> hour =
      dateAndDate.last.split(':').map((e) => int.parse(e)).toList();
      DateTime data = DateTime(
        date[2],
        date[1],
        date[0],
        hour[0],
        hour[1],
        hour[2],
      );
      return data.millisecondsSinceEpoch;
    } on Exception catch (_) {
      return 0;
    }
  }

  static String convertTime(
      String time, {
        String format = 'dd MMM',
        bool isUTC = false,
      }) {
    try {
      List<String> dateAndDate = time.split(' ');

      List<int> date = [];
      if (dateAndDate.first.contains('-')) {
        date = dateAndDate.first
            .split('-')
            .map((e) => int.parse(e))
            .toList()
            .reversed
            .toList();
      } else {
        date = dateAndDate.first.split('/').map((e) => int.parse(e)).toList();
      }

      List<int> hour =
      dateAndDate.last.split(':').map((e) => int.parse(e)).toList();
      DateTime data = DateTime(
        date[2],
        date[1],
        date[0],
        hour[0],
        hour[1],
        hour[2],
      );
      return DateFormat(
        format,
      ).format(DateTime.fromMillisecondsSinceEpoch(
        data.millisecondsSinceEpoch,
        isUtc: isUTC,
      ));
    } on Exception catch (_) {
      return '';
    }
  }

  static bool isTablet(BuildContext context){
    log('Size ${MediaQuery.of(context).size.width * 60 /100}');
    return MediaQuery.of(context).size.width > 550;
  }
}
