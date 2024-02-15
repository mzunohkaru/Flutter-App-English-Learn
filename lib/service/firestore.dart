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

  Future<Question> fetchData({required int qCollectionIndex, required int qDocIndex, required int qFieldIndex}) async {
    final snapshot = await FirebaseFirestore.instance
        .collection('test_collections$qCollectionIndex')
        .doc('test_document_map$qDocIndex')
        .get();

    // ドキュメントのデータをMapとして取得
    Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;

    // Questionオブジェクトに変換
    return Question.fromJson(data['Q$qFieldIndex']);
  }
}
