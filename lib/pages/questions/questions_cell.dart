import 'package:firebase_english_app/model/question.dart';
import 'package:firebase_english_app/utils/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class QuestionsCell extends StatefulWidget {
  final Question question;

  const QuestionsCell({super.key, required this.question});

  @override
  State<QuestionsCell> createState() => _QuestionsCellState();
}

class _QuestionsCellState extends State<QuestionsCell> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CachedNetworkImage(
          imageUrl: widget.question.imageURL,
          progressIndicatorBuilder: (context, url, downloadProgress) =>
              CircularProgressIndicator(value: downloadProgress.progress),
          errorWidget: (context, url, dynamic error) => const Text(
            '画像をロードできませんでした。',
            style: TextStyle(color: Colors.white),
          ),
          imageBuilder: (context, imageProvider) => Image(image: imageProvider),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          widget.question.textEnglish,
          style: basicStyle,
        ),
        const SizedBox(
          height: 30,
        ),
        const Divider(),
      ],
    );
  }
}
