import 'package:flutter/material.dart';
import 'dart:core';
import 'package:narastagram/data/favorite_list.dart';
import 'package:narastagram/view/narasta_thirdpg_containersview.dart';

class NaraStaFavoriteListview extends StatefulWidget {
  const NaraStaFavoriteListview({Key? key}) : super(key: key);

  @override
  State<NaraStaFavoriteListview> createState() => _NaraStaFavoriteListviewState();
}

class _NaraStaFavoriteListviewState extends State<NaraStaFavoriteListview> {
  List<FavoriteList> fvList = [
    FavoriteList(
      profileImage: 'assets/images/avatar.png',
      favoriteDate: '오늘',
      favoriteContent: 'rara님이 좋아요를 눌렀습니다',
    ),
    FavoriteList(
      profileImage: 'assets/images/narasta_penguin2.png',
      favoriteDate: '이번주',
      favoriteContent: 'eva님이 좋아요를 눌렀습니다',
    ),
    FavoriteList(
      profileImage: 'assets/images/narasta_penguin.png',
      favoriteDate: '이번달',
      favoriteContent: 'momo님이 좋아요를 눌렀습니다',
    ),
    FavoriteList(
      profileImage: 'assets/images/narasta_dog.png',
      favoriteDate: '이전 활동',
      favoriteContent: 'baba님이 댓글을 남겼습니다',
      favoriteContents: 'rara님이 좋아요를 눌렀습니다',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 500.0,
          padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
          child: AspectRatio(
            aspectRatio: 1.0,
            child: ListView.separated(
              itemCount: fvList.length,
              itemBuilder: (context, index) {
                return FvContentsTile(fvData: fvList[index]);
              },
              separatorBuilder: (context, index) => const Divider(),
            ),
          ),
        ),
      ],
    );
  }
}

class FvContentsTile extends StatelessWidget {
  const FvContentsTile({
    Key? key,
    required this.fvData,
  }) : super(key: key);

  final FavoriteList fvData;
  final bool isTrue = false;
  final bool isContent = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleDateContainer(
          topMargin: 5.0,
          leftMargin: 10.0,
          bottomMargin: 5.0,
          titleDate: fvData.favoriteDate,
        ),
        isContent?
          ActivityDetailsContainer(
            leftMargin: 10.0,
            bottomMargin: 5.0,
            profileImage: fvData.profileImage,
            activityDetails: fvData.favoriteContent,
          ):
        isTrue?
        ActivityDetailsContainer(
          leftMargin: 10.0,
          bottomMargin: 5.0,
          profileImage: fvData.profileImage,
          activityDetails: fvData.favoriteContents,
        ):
        Container(
            height: 10.0,
          ),

        ],
      );
  }
}


