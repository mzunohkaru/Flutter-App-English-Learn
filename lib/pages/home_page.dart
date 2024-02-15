import 'package:firebase_english_app/pages/select_set_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(builder: (context) => const HomePage());
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late List<Widget> list = [
    titleItem(title: "600点レベル", subtitle: "助走の400語", qCollectionIndex: 600),
    titleItem(title: "730点レベル", subtitle: "加速の300語", qCollectionIndex: 730),
    titleItem(title: "860点レベル", subtitle: "飛躍の200語", qCollectionIndex: 860),
    titleItem(title: "990点レベル", subtitle: "頂点の100語", qCollectionIndex: 990),
    titleItem(title: "Supplement", subtitle: "さらなるレベルアップ", qCollectionIndex: 1),
    titleItem(title: "すべて", subtitle: "まとめて学習", qCollectionIndex: 2),
    titleItem(title: "単語帳", subtitle: "リスニング", qCollectionIndex: 3),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("金のフレーズ"),
        centerTitle: true,
        leading: TextButton(onPressed: () {}, child: const Text("ストア")),
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
      body: GridView.count(
          padding: const EdgeInsets.all(4.0),
          crossAxisCount: 2, // 写真に合わせて2列に設定
          crossAxisSpacing: 4.0, // 横のスペース
          mainAxisSpacing: 4.0, // 縦のスペース
          childAspectRatio: 1, // カードの縦横比
          children: list),
    );
  }

  Widget titleItem(
      {required String title,
      required String subtitle,
      required int qCollectionIndex}) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => SelectSetPage(qCollectionIndex: qCollectionIndex)));
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 24.0,
              ),
            ),
            const Icon(
              Icons.train,
              size: 50.0,
            ),
            Text(
              subtitle,
            ),
          ],
        ),
      ),
    );
  }
}
