import 'package:flutter/material.dart';

class NaraStaFavoriteListview extends StatefulWidget {
  const NaraStaFavoriteListview({Key? key}) : super(key: key);

  @override
  State<NaraStaFavoriteListview> createState() => _NaraStaFavoriteListviewState();
}

class _NaraStaFavoriteListviewState extends State<NaraStaFavoriteListview> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 리스트뷰 넣을예정, 임의로 컨테이너 설정
        Container(
          width: 300.0,
          height: 300.0,
          color: Colors.indigo,
        ),
      ],
    );
  }
}
