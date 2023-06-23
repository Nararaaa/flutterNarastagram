import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../sub_page/narasta_first_sub_page.dart';
import '../sub_page/narasta_second_sub_page.dart';

class NaraStaMainPage extends StatefulWidget {
  const NaraStaMainPage({Key? key}) : super(key: key);

  @override
  State<NaraStaMainPage> createState() => _NaraStaMainPageState();
}

class _NaraStaMainPageState extends State<NaraStaMainPage> {
  int screenIndex = 0;
  List<Widget> screenMove = [
    const NaraStaFirstSubPage(),
    const NaraStaSecondSubPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            child: InkWell(
              child: Image.asset('assets/images/narasta_favorite.png'),
              onTap: (){
                debugPrint('1');
              },
            ),
          ),
          Container(
            child: InkWell(
              child: Image.asset('assets/images/narasta_mesege.png'),
              onTap: (){
                debugPrint('2');
              },
            ),
          ),
        ],
        backgroundColor: Colors.white,
        title: const
        Text(
          'NaraStaGram',
          style: TextStyle(
            fontFamily: 'Baemin',
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: screenMove.elementAt(screenIndex),
              width: double.infinity,
            ),
          ),
        ],
      ),
      // body List 위젯 형태로 보여질 위젯을 정하고 탭을 선택할때 index가 변하게 하는 방법
      bottomNavigationBar: BottomNavigationBar(
        // 선택 탭의 번호를 지정
        currentIndex: screenIndex,
        // 선택 시 컬러 바뀜
        selectedItemColor: Colors.lightBlueAccent,
        // ontap에서 정의 해줘야함
        onTap: (index) {
          setState(() { // 상태가 변경될때 호출, 변경되지 않으면 동작 안함
            screenIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'My',
          ),
        ],
      ),
    );
  }
}
