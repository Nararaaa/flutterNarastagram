import 'package:flutter/material.dart';
import 'dart:core';
import 'package:narastagram/data/favorite_list.dart';

class NaraStaFavoriteListview extends StatefulWidget {
  const NaraStaFavoriteListview({Key? key}) : super(key: key);

  @override
  State<NaraStaFavoriteListview> createState() => _NaraStaFavoriteListviewState();
}

class _NaraStaFavoriteListviewState extends State<NaraStaFavoriteListview> {
  List<FavoriteList> fvList = [
    FavoriteList(
      favoriteDate: '오늘',
      favoriteContents: 'rara님이 좋아요를 눌렀습니다',
    ),
    FavoriteList(
      favoriteDate: '이번주',
      favoriteContents: 'eva님이 좋아요를 눌렀습니다',
    ),
    FavoriteList(
      favoriteDate: '이번달',
      favoriteContents: 'momo님이 좋아요를 눌렀습니다',
    ),
    FavoriteList(
      favoriteDate: '이전 활동',
      favoriteContents: 'rara님이 좋아요를 눌렀습니다',
      favoriteContent: 'baba님이 댓글을 남겼습니다',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         AspectRatio(
            aspectRatio: 1.0,
            child: ListView.separated(
              itemCount: fvList.length,
              itemBuilder: (context, index) {
                return FvContentsTile(fvData: fvList[index]);
              },
              separatorBuilder: (context, index) => const Divider(),
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(fvData.favoriteDate),
          subtitle: Text(fvData.favoriteContents),
        ),
      ],
    );

  }
}


