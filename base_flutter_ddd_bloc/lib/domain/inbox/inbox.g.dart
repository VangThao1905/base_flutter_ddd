// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inbox.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Inbox _$$_InboxFromJson(Map<String, dynamic> json) => _$_Inbox(
      id: json['id'] as int? ?? 0,
      type: json['type'] as int? ?? 0,
      dateTime: json['dateTime'] as String? ?? '',
      link: json['link'] as String? ?? '',
      content: json['content'] as String? ?? '',
      buttonContent: json['buttonContent'] as String? ?? '',
      read: json['read'] as bool? ?? false,
    );

Map<String, dynamic> _$$_InboxToJson(_$_Inbox instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'dateTime': instance.dateTime,
      'link': instance.link,
      'content': instance.content,
      'buttonContent': instance.buttonContent,
      'read': instance.read,
    };
