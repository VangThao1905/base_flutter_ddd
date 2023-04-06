// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inbox_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InboxDetail _$$_InboxDetailFromJson(Map<String, dynamic> json) =>
    _$_InboxDetail(
      type: json['type'] as int? ?? 0,
      inboxId: json['inbox_id'] as int? ?? 0,
      formId: json['form_id'] as int? ?? 0,
      actionButton: json['acction_button'] as int? ?? 0,
      campaign: json['campaign'] as String? ?? '',
      description: json['description'] as String? ?? '',
      content: json['content'] as String? ?? '',
      promoExpireDate: json['promo_expire_date'] as String? ?? '',
      startDate: json['start_date'] as String? ?? '',
      actionButtonText: json['action_button_text'] as String? ?? '',
      actionButtonCode: json['action_button_code'] as String? ?? '',
      actionButtonHtml: json['action_button_html'] as String? ?? '',
      attrButton: json['attr_button'] as String? ?? '',
      detailHtml: json['detail_html'] as String? ?? '',
      titleButton: json['title_button'] as String? ?? '',
      linkButton: json['link_button'] as String? ?? '',
    );

Map<String, dynamic> _$$_InboxDetailToJson(_$_InboxDetail instance) =>
    <String, dynamic>{
      'type': instance.type,
      'inbox_id': instance.inboxId,
      'form_id': instance.formId,
      'acction_button': instance.actionButton,
      'campaign': instance.campaign,
      'description': instance.description,
      'content': instance.content,
      'promo_expire_date': instance.promoExpireDate,
      'start_date': instance.startDate,
      'action_button_text': instance.actionButtonText,
      'action_button_code': instance.actionButtonCode,
      'action_button_html': instance.actionButtonHtml,
      'attr_button': instance.attrButton,
      'detail_html': instance.detailHtml,
      'title_button': instance.titleButton,
      'link_button': instance.linkButton,
    };
