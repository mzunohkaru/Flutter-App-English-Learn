import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@freezed
class Question with _$Question {
  const factory Question({
    required String imageURL,
    required String textEnglish,
    required String textJapanese,
    required String wordEnglish,
    required String wordJapanese,
    required String explanation,
    required String wordType,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) => _$QuestionFromJson(json);
}