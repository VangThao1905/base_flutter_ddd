// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'init_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InitData _$$_InitDataFromJson(Map<String, dynamic> json) => _$_InitData(
      accessToken: json['accessToken'] as String? ?? '',
      env: json['env'] as String? ?? Env.dev,
    );

Map<String, dynamic> _$$_InitDataToJson(_$_InitData instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'env': instance.env,
    };
