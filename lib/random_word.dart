import 'dart:math';
import 'package:english_words/english_words.dart';

final random = Random();

String getRandomWord() {
  return all[random.nextInt(all.length)];
}
