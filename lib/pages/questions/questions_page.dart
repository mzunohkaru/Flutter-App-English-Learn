import 'package:firebase_english_app/model/question.dart';
import 'package:firebase_english_app/pages/questions/answer_cell.dart';
import 'package:firebase_english_app/pages/questions/questions_cell.dart';
import 'package:firebase_english_app/service/firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class QuestionsPage extends StatefulWidget {
  final int qCollectionIndex;
  final int qDocIndex;

  const QuestionsPage(
      {super.key, required this.qCollectionIndex, required this.qDocIndex});

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  late Future<Question> futureQuestion;

  final tts = FlutterTts();
  String ttsText = "";

  int selectedIndex = 0;

  int qFieldIndex = 1;

  // PageControllerをフィールドとして追加
  final PageController _pageController = PageController(
      // 最初に表示するページのインデックスを指定
      initialPage: 0,
      // 各ページは全画面を占める
      viewportFraction: 1);

  @override
  void initState() {
    super.initState();
    // futureQuestion = FirebaseStoreService().fetchData();
    // futureQuestion.then((question) {
    //   print("DEBUG: Fetched test_document_map data: $question");
    // });

    print("DEBUG: Select set page qDocIndex ${widget.qDocIndex}");
    futureQuestion = FirebaseStoreService().fetchData(
        qCollectionIndex: widget.qCollectionIndex,
        qDocIndex: widget.qDocIndex,
        qFieldIndex: qFieldIndex);
  }

  void _updateQuestion() {
    setState(() {
      futureQuestion = FirebaseStoreService().fetchData(
          qCollectionIndex: widget.qCollectionIndex,
          qDocIndex: widget.qDocIndex,
          qFieldIndex: qFieldIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              // home
            },
            icon: const Icon(CupertinoIcons.home),
          ),
        ],
      ),
      body: FutureBuilder<Question>(
        future: FirebaseStoreService().fetchData(
            qCollectionIndex: widget.qCollectionIndex,
            qDocIndex: widget.qDocIndex,
            qFieldIndex: qFieldIndex),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('エラー: ${snapshot.error}');
          } else {
            ttsText = snapshot.data!.textEnglish;
            return PageView.builder(
              itemCount: 10,
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    QuestionsCell(question: snapshot.data!),
                    AnswerCell(question: snapshot.data!),
                  ],
                );
              },
            );
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          buildBottomNavigationBarItem(iconData: Icons.arrow_back, limit: 1),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.volume_up_rounded,
                color: Colors.white,
              ),
              label: ''),
          buildBottomNavigationBarItem(
              iconData: Icons.arrow_forward, limit: 10),
        ],
        currentIndex: selectedIndex,
        elevation: 25,
        onTap: (int index) {
          _onItemTapped(index);
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }

  Future _onItemTapped(int index) async {
    switch (index) {
      case 0:
        qFieldIndex--;
        // Page Viewを後ろに戻る
        _pageController.previousPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
        _updateQuestion();
        break;
      case 1:
        tts.setLanguage("en-US");
        await tts.speak(ttsText);
        break;
      case 2:
        qFieldIndex++;
        // Page Viewを前に進める
        _pageController.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
        _updateQuestion();
        break;
    }
    selectedIndex = index;
    setState(() {});
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
      {required IconData iconData, required int limit}) {
    return BottomNavigationBarItem(
      icon: Icon(
        iconData,
        color:
            qFieldIndex == limit ? Colors.white.withOpacity(0.3) : Colors.white,
      ),
      label: '',
    );
  }
}
