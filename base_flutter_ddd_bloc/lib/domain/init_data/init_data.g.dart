// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'init_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InitData _$$_InitDataFromJson(Map<String, dynamic> json) => _$_InitData(
      accessToken: json['accessToken'] as String? ?? '',
      screen: json['screen'] as String? ?? '',
      app: json['app'] as String? ?? '',
      env: json['env'] as String? ?? Env.dev,
      initInboxId: json['initInboxId'] as int? ?? 0,
    );

Map<String, dynamic> _$$_InitDataToJson(_$_InitData instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'screen': instance.screen,
      'app': instance.app,
      'env': instance.env,
      'initInboxId': instance.initInboxId,
    };
