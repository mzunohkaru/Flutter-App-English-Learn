import 'package:firebase_english_app/utils/constants.dart';
import 'package:flutter/material.dart';

class BodyDetails extends StatelessWidget {
  final String textJapanese;
  final String wordEnglish;
  final String wordJapanese;
  final String wordType;
  final String explanation;

  const BodyDetails(
      {super.key,
      required this.textJapanese,
      required this.wordEnglish,
      required this.wordJapanese,
      required this.wordType,
      required this.explanation});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.transparent,
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(textJapanese,
                  textAlign: TextAlign.center, style: basicStyle),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.yellow[200],
                  border: const Border(
                    top: BorderSide(
                      color: Colors.yellow,
                      width: 2.0,
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      wordEnglish,
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      "[sample]",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  word(
                      wordTypes: getWordTypeFromString(wordType),
                      text: wordJapanese,
                      wordStyle: WordStyle.large),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(155, 251, 255, 172),
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: const Color.fromARGB(255, 251, 255, 172),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        explanation,
                        style: const TextStyle(color: Colors.black),
                      ),
                      word(
                          wordTypes: WordTypes.noun,
                          text: "sample",
                          wordStyle: WordStyle.small),
                      word(
                          wordTypes: WordTypes.noun,
                          text: "sample",
                          wordStyle: WordStyle.small),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget word({
    required WordTypes wordTypes,
    required String text,
    required WordStyle wordStyle,
  }) {
    String typeName;
    Color color;
    TextStyle style;

    switch (wordTypes) {
      case WordTypes.noun:
        typeName = '名';
        color = Colors.red;
        break;

      case WordTypes.verb:
        typeName = '動';
        color = Colors.blue;
        break;

      case WordTypes.auxiliary:
        typeName = '助';
        color = Colors.green;
        break;

      case WordTypes.adjective:
        typeName = '形';
        color = Colors.orange;
        break;

      case WordTypes.adverb:
        typeName = '副';
        color = Colors.purple;
        break;

      case WordTypes.conjunction:
        typeName = '接';
        color = Colors.brown;
        break;

      case WordTypes.preposition:
        typeName = '前';
        color = Colors.pink;
        break;

      case WordTypes.article:
        typeName = '冠';
        color = Colors.lime;
        break;
    }

    switch (wordStyle) {
      case WordStyle.small:
        style = const TextStyle(color: Colors.black, fontSize: 16);
        break;

      case WordStyle.large:
        style = basicStyle;
        break;
    }

    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: color),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Text(
            typeName,
            style: TextStyle(fontSize: 16, color: color),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          text,
          style: style,
        )
      ],
    );
  }
}
