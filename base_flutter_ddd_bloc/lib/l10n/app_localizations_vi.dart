import 'app_localizations.dart';

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get inbox => 'Hộp thư đến';

  @override
  String get offer => 'Ưu đãi';

  @override
  String get all => 'Tất cả';

  @override
  String get notification => 'Thông báo';

  @override
  String get notificationSetting => 'Cài đặt thông báo';

  @override
  String get detail => 'Chi tiết ';

  @override
  String get noInbox => 'Bạn chưa có thư đến nào';

  @override
  String get expiredSoon => 'Sắp hết hạn';

  @override
  String get retry => 'Thử lại';
}
