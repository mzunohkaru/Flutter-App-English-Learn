import 'package:firebase_english_app/model/question.dart';
import 'package:firebase_english_app/pages/body/details.dart';
import 'package:firebase_english_app/pages/body/none.dart';
import 'package:firebase_english_app/pages/body/translate.dart';
import 'package:flutter/material.dart';
import 'package:firebase_english_app/utils/constants.dart';

class AnswerCell extends StatefulWidget {
  final Question question;

  const AnswerCell({super.key, required this.question});

  @override
  State<AnswerCell> createState() => _AnswerCellState();
}

class _AnswerCellState extends State<AnswerCell> {
  late StateQuestion stateQuestion = StateQuestion.None;

  @override
  void initState() {
    super.initState();
    stateQuestion = StateQuestion.None;
  }

  @override
  Widget build(BuildContext context) {
    return body(stateQuestion: stateQuestion);
  }

  Widget body({required StateQuestion stateQuestion}) {
    if (stateQuestion == StateQuestion.None) {
      return BodyNone(onTap: _onBodyNoneTapped);
    } else if (stateQuestion == StateQuestion.Translate) {
      return BodyTranslate(
          onTap: _onBodyTranslateTapped,
          textJapanese: widget.question.textJapanese);
    } else if (stateQuestion == StateQuestion.Detail) {
      return BodyDetails(
          textJapanese: widget.question.textJapanese,
          wordEnglish: widget.question.wordEnglish,
          wordJapanese: widget.question.wordJapanese,
          wordType: widget.question.wordType,
          explanation: widget.question.explanation);
    }
    return BodyNone(onTap: _onBodyNoneTapped);
  }

  void _onBodyNoneTapped() {
    this.stateQuestion = StateQuestion.Translate;
    setState(() {});
  }

  void _onBodyTranslateTapped() {
    this.stateQuestion = StateQuestion.Detail;
    setState(() {});
  }
}
