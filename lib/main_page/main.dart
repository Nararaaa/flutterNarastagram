import 'package:flutter/material.dart';
import 'package:narastagram/main_page/narasta_main_page.dart';

void main() {
  runApp(const NaraStaHome());
}

class NaraStaHome extends StatefulWidget {
   const NaraStaHome({super.key});

  @override
  State<NaraStaHome> createState() => _NaraStaHomeState();
}

class _NaraStaHomeState extends State<NaraStaHome> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '나라스타그램',
      home: NaraStaMainPage()
    );
  }
}
