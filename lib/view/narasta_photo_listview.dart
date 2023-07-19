import 'dart:core';

import 'package:flutter/material.dart';
import 'package:narastagram/data/feed.dart';
import 'narasta_firstpg_containersview.dart';


class NaraStaPhotoListview extends StatefulWidget {
  const NaraStaPhotoListview({Key? key,
  }) : super(key: key);

  @override
  State<NaraStaPhotoListview> createState() => _NaraStaPhotoListviewState();
}

class _NaraStaPhotoListviewState extends State<NaraStaPhotoListview> {

  List<FeedContents> userList = [
    FeedContents(
      userName: 'userName',
      profile: 'assets/images/avatar.png',
      textFeed: '그림이 너무 이쁘다',
      image: 'https://picsum.photos/id/222/500/500',
    ),
    FeedContents(
      userName: 'fofo',
      profile: 'assets/images/narasta_penguin2.png',
      textFeed: '안녕하세요',
      image: 'https://picsum.photos/id/555/500/500',
    ),
    FeedContents(
      userName: 'nono',
      profile: 'assets/images/narasta_penguin.png',
      textFeed: '룰루랄라 즐겁다',
      image: 'https://picsum.photos/id/444/500/500',
    ),
    FeedContents(
      userName: 'momo',
      profile: 'assets/images/narasta_dog.png',
      textFeed: 'I am so happy',
      image: 'https://picsum.photos/id/444/500/500',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
           child: ListView.builder(
             itemCount: userList.length,
             itemBuilder: (context, index) {
              return PhotoListItem(data: userList[index]);
             }
          ),
        ),
      ],
    );
  }
}


class PhotoListItem extends StatelessWidget {
  PhotoListItem({
    Key? key,
    required this.data,
  }) : super(key: key);
  
  final FeedContents data;

  final List<String> buttonList = [
    'assets/images/narasta_favorite.png',
    'assets/images/narasta_chat.png',
    'assets/images/narasta_mesege.png',
  ];
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 상단 프로필 컨테이너
        ProfileNameContainer(
          leftMargin: 2.0,
          topMargin: 5.0,
          rightMargin: 2.0,
          bottomMargin: 20.0,
          userNameUrl: data.userName,
          profileImageUrl: data.profile,
        ),
        // 이미지 부분
        AspectRatio(
          aspectRatio: 1.0,
          child: Image.network (data.image),
        ),
        // 버튼 컨테이너
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             ButtonContainer(
               leftMargin: 10.0,
               topMargin: 10.0,
               rightMargin: 5.0,
               bottomMargin: 5.0,
               buttonListUrl: buttonList[0],
             ),
            ButtonContainer(
              leftMargin: 0,
              topMargin: 10.0,
              rightMargin: 5.0,
              bottomMargin: 5.0,
              buttonListUrl: buttonList[1],
            ),
            ButtonContainer(
              leftMargin: 0,
              topMargin: 10.0,
              rightMargin: 5.0,
              bottomMargin: 5.0,
              buttonListUrl: buttonList[2],
            ),
          ],
        ),
        // 좋아요 갯수 부분

        // 텍스트 부분
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ContentNameContainer(
              leftMargin: 7.0,
              topMargin: 0,
              rightMargin: 2.0,
              bottomMargin: 0,
              userNameUrl: data.userName,
            ),
            ContentTextContainer(
                leftMargin: 0,
                topMargin: 0,
                rightMargin: 2.0,
                bottomMargin: 0,
                textContentUrl: data.textFeed,
            ),
          ],
        ),
      ],
    );
  }
}



/*Container(
          width: 500.0,
          margin: const EdgeInsets.fromLTRB(5.0, 0, 0,0),
          child: SizedBox(
            width: 100.0,
            height: 100.0,
            child: Text(data.textFeed),
          ),
        ),*/