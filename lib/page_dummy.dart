import 'package:flutter/material.dart';

class DummyPage extends StatelessWidget {
  const DummyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("ページ(1)")),
        body: Center(
          child: TextButton(
            child: const Text("最初のページに戻る"),
            // （1） 前の画面に戻る
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ));
  }
}
