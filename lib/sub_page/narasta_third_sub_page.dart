import 'package:flutter/material.dart';
import 'package:narastagram/view/narasta_favorite_listview.dart';


class NaraStaThirdSubPage extends StatelessWidget {
  const NaraStaThirdSubPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          '알림(좋아요표시)',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'baemin',
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.west_outlined),
          color: Colors.black,
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          NaraStaFavoriteListview(),
          Container(
            width: 300.0,
            height: 300.0,
            color:  Colors.amber,
          ),
        ],
      ),
    );

  }
}
