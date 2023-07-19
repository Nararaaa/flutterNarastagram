import 'package:flutter/material.dart';

class NaraStaPhotoGridview extends StatefulWidget {
  const NaraStaPhotoGridview({Key? key}) : super(key: key);

  @override
  State<NaraStaPhotoGridview> createState() => _NaraStaPhotoGridviewState();
}

class _NaraStaPhotoGridviewState extends State<NaraStaPhotoGridview> {
  @override
  Widget build(BuildContext context) {
    // 얘는 왜 안될까요...?
    return GridView.builder(
      itemCount: 11, // 이미지 length 로 지정해야함
      //SliverGridDelegateWithFixedCrossAxisCount : 몇개를 배치할지 결정
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // 1개의 행에 보여줄 개수
        childAspectRatio: 1/2, // 아이템 비율
        mainAxisSpacing: 10, // 사이의 수직 간격
        crossAxisSpacing: 10, // 사이의 좌우 간격
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.indigoAccent,
          child: Text('Item : $index'),
        );
      },
    );
  }
}


/**/