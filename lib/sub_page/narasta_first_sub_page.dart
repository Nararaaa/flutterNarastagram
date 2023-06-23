import 'package:flutter/material.dart';
import 'package:narastagram/view/narasta_photo_listview.dart';
import 'package:narastagram/view/narasta_story_listview.dart';

class NaraStaFirstSubPage extends StatefulWidget {
  const NaraStaFirstSubPage({Key? key}) : super(key: key);

  @override
  State<NaraStaFirstSubPage> createState() => _NaraStaFirstSubPageState();
}

class _NaraStaFirstSubPageState extends State<NaraStaFirstSubPage> {

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 100.0,
          child: NaraStaStoryListview(),
        ),
        Expanded(
          child: NaraStaPhotoListview(),
        ),
      ],
    );
  }
}