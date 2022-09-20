// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_api_reso.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NumberApiReso _$NumberApiResoFromJson(Map<String, dynamic> json) =>
    NumberApiReso(
      trivaText: json['text'] as String?,
      number: json['number'] as int?,
      found: json['found'] as bool?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$NumberApiResoToJson(NumberApiReso instance) =>
    <String, dynamic>{
      'text': instance.trivaText,
      'number': instance.number,
      'found': instance.found,
      'type': instance.type,
    };
