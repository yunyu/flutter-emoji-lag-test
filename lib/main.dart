import 'package:flutter/material.dart';
import 'random_word.dart';
import 'random_emoji.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emoji Lag Test',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: EmojiList(),
    );
  }
}

class EmojiList extends StatelessWidget {
  String getEmojiText() {
    String out = '';
    for (int i = 0; i < 100; ++i) {
      out = out + getRandomWord() + getRandomEmoji();
    }
    return out;
  }

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
        body: ListView.builder(
      itemBuilder: (ctx, index) =>
          Column(children: [Text(this.getEmojiText()), Divider()]),
    ));
  }
}
