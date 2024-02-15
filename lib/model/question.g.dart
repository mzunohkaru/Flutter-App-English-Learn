// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionImpl _$$QuestionImplFromJson(Map<String, dynamic> json) =>
    _$QuestionImpl(
      imageURL: json['imageURL'] as String,
      textEnglish: json['textEnglish'] as String,
      textJapanese: json['textJapanese'] as String,
      wordEnglish: json['wordEnglish'] as String,
      wordJapanese: json['wordJapanese'] as String,
      explanation: json['explanation'] as String,
      wordType: json['wordType'] as String,
    );

Map<String, dynamic> _$$QuestionImplToJson(_$QuestionImpl instance) =>
    <String, dynamic>{
      'imageURL': instance.imageURL,
      'textEnglish': instance.textEnglish,
      'textJapanese': instance.textJapanese,
      'wordEnglish': instance.wordEnglish,
      'wordJapanese': instance.wordJapanese,
      'explanation': instance.explanation,
      'wordType': instance.wordType,
    };
