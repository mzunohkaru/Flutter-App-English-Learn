// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$Question {
  String get imageURL => throw _privateConstructorUsedError;
  String get textEnglish => throw _privateConstructorUsedError;
  String get textJapanese => throw _privateConstructorUsedError;
  String get wordEnglish => throw _privateConstructorUsedError;
  String get wordJapanese => throw _privateConstructorUsedError;
  String get explanation => throw _privateConstructorUsedError;
  String get wordType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res, Question>;
  @useResult
  $Res call(
      {String imageURL,
      String textEnglish,
      String textJapanese,
      String wordEnglish,
      String wordJapanese,
      String explanation,
      String wordType});
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res, $Val extends Question>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageURL = null,
    Object? textEnglish = null,
    Object? textJapanese = null,
    Object? wordEnglish = null,
    Object? wordJapanese = null,
    Object? explanation = null,
    Object? wordType = null,
  }) {
    return _then(_value.copyWith(
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      textEnglish: null == textEnglish
          ? _value.textEnglish
          : textEnglish // ignore: cast_nullable_to_non_nullable
              as String,
      textJapanese: null == textJapanese
          ? _value.textJapanese
          : textJapanese // ignore: cast_nullable_to_non_nullable
              as String,
      wordEnglish: null == wordEnglish
          ? _value.wordEnglish
          : wordEnglish // ignore: cast_nullable_to_non_nullable
              as String,
      wordJapanese: null == wordJapanese
          ? _value.wordJapanese
          : wordJapanese // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      wordType: null == wordType
          ? _value.wordType
          : wordType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionImplCopyWith<$Res>
    implements $QuestionCopyWith<$Res> {
  factory _$$QuestionImplCopyWith(
          _$QuestionImpl value, $Res Function(_$QuestionImpl) then) =
      __$$QuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String imageURL,
      String textEnglish,
      String textJapanese,
      String wordEnglish,
      String wordJapanese,
      String explanation,
      String wordType});
}

/// @nodoc
class __$$QuestionImplCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$QuestionImpl>
    implements _$$QuestionImplCopyWith<$Res> {
  __$$QuestionImplCopyWithImpl(
      _$QuestionImpl _value, $Res Function(_$QuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageURL = null,
    Object? textEnglish = null,
    Object? textJapanese = null,
    Object? wordEnglish = null,
    Object? wordJapanese = null,
    Object? explanation = null,
    Object? wordType = null,
  }) {
    return _then(_$QuestionImpl(
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      textEnglish: null == textEnglish
          ? _value.textEnglish
          : textEnglish // ignore: cast_nullable_to_non_nullable
              as String,
      textJapanese: null == textJapanese
          ? _value.textJapanese
          : textJapanese // ignore: cast_nullable_to_non_nullable
              as String,
      wordEnglish: null == wordEnglish
          ? _value.wordEnglish
          : wordEnglish // ignore: cast_nullable_to_non_nullable
              as String,
      wordJapanese: null == wordJapanese
          ? _value.wordJapanese
          : wordJapanese // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      wordType: null == wordType
          ? _value.wordType
          : wordType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionImpl implements _Question {
  const _$QuestionImpl(
      {required this.imageURL,
      required this.textEnglish,
      required this.textJapanese,
      required this.wordEnglish,
      required this.wordJapanese,
      required this.explanation,
      required this.wordType});

  factory _$QuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionImplFromJson(json);

  @override
  final String imageURL;
  @override
  final String textEnglish;
  @override
  final String textJapanese;
  @override
  final String wordEnglish;
  @override
  final String wordJapanese;
  @override
  final String explanation;
  @override
  final String wordType;

  @override
  String toString() {
    return 'Question(imageURL: $imageURL, textEnglish: $textEnglish, textJapanese: $textJapanese, wordEnglish: $wordEnglish, wordJapanese: $wordJapanese, explanation: $explanation, wordType: $wordType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionImpl &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL) &&
            (identical(other.textEnglish, textEnglish) ||
                other.textEnglish == textEnglish) &&
            (identical(other.textJapanese, textJapanese) ||
                other.textJapanese == textJapanese) &&
            (identical(other.wordEnglish, wordEnglish) ||
                other.wordEnglish == wordEnglish) &&
            (identical(other.wordJapanese, wordJapanese) ||
                other.wordJapanese == wordJapanese) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            (identical(other.wordType, wordType) ||
                other.wordType == wordType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageURL, textEnglish,
      textJapanese, wordEnglish, wordJapanese, explanation, wordType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      __$$QuestionImplCopyWithImpl<_$QuestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionImplToJson(
      this,
    );
  }
}

abstract class _Question implements Question {
  const factory _Question(
      {required final String imageURL,
      required final String textEnglish,
      required final String textJapanese,
      required final String wordEnglish,
      required final String wordJapanese,
      required final String explanation,
      required final String wordType}) = _$QuestionImpl;

  factory _Question.fromJson(Map<String, dynamic> json) =
      _$QuestionImpl.fromJson;

  @override
  String get imageURL;
  @override
  String get textEnglish;
  @override
  String get textJapanese;
  @override
  String get wordEnglish;
  @override
  String get wordJapanese;
  @override
  String get explanation;
  @override
  String get wordType;
  @override
  @JsonKey(ignore: true)
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
