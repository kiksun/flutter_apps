import 'package:flutter/material.dart';
import 'package:flutter_template/AllWords.dart';
import 'package:flutter_template/Github_Cliant/page.dart';
import 'package:flutter_template/TitleChange/title_change_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TitleChangePage()),
                    );
                  },
                  child: const Text(AllWord.titleChangeApp)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(255),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GithubCliantPage()),
                    );
                  },
                  child: const Text(AllWord.githubCliantApp)),
            ],
          ),
        ));
  }
}
