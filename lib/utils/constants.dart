import 'package:flutter/material.dart';

/// シンプルなプリローダー
const preloader =
    Center(child: CircularProgressIndicator(color: Colors.orange));

/// 共通のテキストスタイル
const basicStyle = TextStyle(fontSize: 23, fontWeight: FontWeight.w300);

enum StateQuestion { None, Translate, Detail }

enum WordTypes {
  noun, // 名詞
  verb, // 動詞
  auxiliary, // 助動詞
  adjective, // 形容詞
  adverb, // 副詞
  conjunction, // 接続詞
  preposition, // 前置詞
  article, // 冠詞
}

WordTypes getWordTypeFromString(String wordTypeString) {
  switch (wordTypeString) {
    case 'noun':
      return WordTypes.noun;
    case 'verb':
      return WordTypes.verb;
    case 'auxiliary':
      return WordTypes.auxiliary;
    case 'adjective':
      return WordTypes.adjective;
    case 'adverb':
      return WordTypes.adverb;
    case 'conjunction':
      return WordTypes.conjunction;
    case 'preposition':
      return WordTypes.preposition;
    case 'article':
      return WordTypes.article;
    default:
      throw Exception('Unknown word type: $wordTypeString');
  }
}

enum WordStyle { small, large }
