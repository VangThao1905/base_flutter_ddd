import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inbox_detail.freezed.dart';
part 'inbox_detail.g.dart';

@freezed
class InboxDetail with _$InboxDetail {
  const factory InboxDetail({
    @Default(0) int type,
    @Default(0) @JsonKey(name: 'inbox_id') int inboxId,
    @Default(0) @JsonKey(name: 'form_id') int formId,
    @Default(0) @JsonKey(name: 'acction_button') int actionButton,
    @Default('') String campaign,
    @Default('') String description,
    @Default('') String content,
    @Default('') @JsonKey(name: 'promo_expire_date') String promoExpireDate,
    @Default('') @JsonKey(name: 'start_date') String startDate,
    @Default('') @JsonKey(name: 'action_button_text') String actionButtonText,
    @Default('') @JsonKey(name: 'action_button_code') String actionButtonCode,
    @Default('') @JsonKey(name: 'action_button_html') String actionButtonHtml,
    @Default('') @JsonKey(name: 'attr_button') String attrButton,
    @Default('') @JsonKey(name: 'detail_html') String detailHtml,
    @Default('') @JsonKey(name: 'title_button') String titleButton,
    @Default('') @JsonKey(name: 'link_button') String linkButton,


  }) = _InboxDetail;



  factory InboxDetail.fromJson(Map<String, dynamic> json) =>
      _$InboxDetailFromJson(json);
}