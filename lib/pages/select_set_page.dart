import 'package:firebase_english_app/pages/questions/questions_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectSetPage extends StatelessWidget {
  final int qCollectionIndex;

  const SelectSetPage({super.key, required this.qCollectionIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("600点レベル"),
        centerTitle: true,
        leading: const BackButton(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(4.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
          childAspectRatio: 1, // アイテムの縦横比
        ),
        itemCount: 40,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => QuestionsPage(
                      qCollectionIndex: qCollectionIndex,
                      qDocIndex: index + 1)));
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Set ${index + 1}',
                    style: const TextStyle(fontSize: 17),
                  ),
                  const Icon(Icons.train, size: 40),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
