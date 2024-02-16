import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_english_app/model/question.dart';

class FirebaseStoreService {
  // Future<Question> fetchData() async {
  //   final snapshot = await FirebaseFirestore.instance
  //       .collection('test_collections')
  //       .doc("test_document")
  //       .get();

  //   if (snapshot.exists) {
  //     return Question.fromJson(snapshot.data() as Map<String, dynamic>);
  //   } else {
  //     throw Exception('Document does not exist on the database');
  //   }
  // }

  // Future<Question> fetchData({required int qCollectionIndex, required int qDocIndex, required int qFieldIndex}) async {
  //   print("DEBUG: fetch question data");
  //   final snapshot = await FirebaseFirestore.instance
  //       .collection('englishLearn_$qCollectionIndex')
  //       .doc('set_$qDocIndex')
  //       .get();

  //   // ドキュメントのデータをMapとして取得
  //   Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;

  //   // Questionオブジェクトに変換
  //   return Question.fromJson(data['Q$qFieldIndex']);
  // }

  Future<List<Question>> fetchData(
      {required int qCollectionIndex, required int qDocIndex}) async {
        
    print("DEBUG: fetch questions data");
    final snapshot = await FirebaseFirestore.instance
        .collection('englishLearn_$qCollectionIndex')
        .doc('set_$qDocIndex')
        .get();

    // ドキュメントのデータをMapとして取得
    Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;

    // すべての問題を格納するための空のリストを作成
    List<Question> questions = [];

    // dataから10個の問題を取得し、それぞれをQuestionオブジェクトに変換してリストに追加
    for (int i = 1; i <= 2; i++) {
      if (data.containsKey('Q$i')) {
        questions.add(Question.fromJson(data['Q$i']));
      }
    }

    return questions;
  }
}
