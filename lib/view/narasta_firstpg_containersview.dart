import 'dart:html';

import 'package:flutter/material.dart';


// 상단 프로필 이름 클래스
class ProfileNameContainer extends StatefulWidget {
  const ProfileNameContainer({
    Key? key,
    required this.profileImageUrl,
    required this.userNameUrl,
    this.leftMargin,
    this.topMargin,
    this.rightMargin,
    this.bottomMargin,
  }) : super(key: key);

  final String profileImageUrl;
  final String userNameUrl;
  final double? leftMargin;
  final double? topMargin;
  final double? rightMargin;
  final double? bottomMargin;

  @override
  State<ProfileNameContainer> createState() => _ProfileNameContainerState();
}

// 상단 프로필 이름 클래스
class _ProfileNameContainerState extends State<ProfileNameContainer> {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50.0,
          height: 30.0,
          padding: const EdgeInsets.all(2.0),
          margin: EdgeInsets.fromLTRB(
            widget.leftMargin?? 0,
            widget.topMargin?? 0,
            widget.rightMargin?? 0,
            widget.bottomMargin?? 0,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: Image.network(widget.profileImageUrl),
            ),
          ),
        ),
        Container(
          width: 100.0,
          height: 30.0,
          margin: EdgeInsets.fromLTRB(
            widget.leftMargin?? 0,
            widget.topMargin?? 0,
            widget.rightMargin?? 0,
            widget.bottomMargin?? 0,
          ),
          child: Text(widget.userNameUrl),
        ),
      ],
    );
  }
}

class FavoriteButtonContainer extends StatefulWidget {
   FavoriteButtonContainer({
    Key? key,
    this.leftMargin,
    this.topMargin,
    this.rightMargin,
    this.bottomMargin,
    required this.count,
    required this.buttonListUrl,
  }) : super(key: key);

  final double? leftMargin;
  final double? topMargin;
  final double? rightMargin;
  final double? bottomMargin;
  final String buttonListUrl;
  late int count;


  @override
  State<FavoriteButtonContainer> createState() => _FavoriteButtonContainerState();
}

class _FavoriteButtonContainerState extends State<FavoriteButtonContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 30.0,
          height: 30.0,
          padding: const EdgeInsets.all(2.0),
          margin: EdgeInsets.fromLTRB(
            widget.leftMargin?? 0,
            widget.topMargin?? 0,
            widget.rightMargin?? 0,
            widget.bottomMargin?? 0,
          ),
          child: SizedBox(
            width: 30.0,
            height: 30.0,
            // 이미지 넣는 버튼
            child: InkWell(
              child: Image.asset(widget.buttonListUrl),
              onTap: (){
                setState(() {
                  widget.count++;
                });
                debugPrint('좋아요버튼');
              },
            ),
          ),
        ),
      ],
    );
  }
}




// 버튼 컨테이너 클래스
class ButtonContainer extends StatelessWidget {
  const ButtonContainer({
    Key? key,
    this.leftMargin,
    this.topMargin,
    this.rightMargin,
    this.bottomMargin,
    required this.buttonListUrl,
  }) : super(key: key);

  final double? leftMargin;
  final double? topMargin;
  final double? rightMargin;
  final double? bottomMargin;
  final String buttonListUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 30.0,
          height: 30.0,
          padding: const EdgeInsets.all(2.0),
          margin: EdgeInsets.fromLTRB(
            leftMargin?? 0,
            topMargin?? 0,
            rightMargin?? 0,
            bottomMargin?? 0,
          ),
          child: SizedBox(
            width: 30.0,
            height: 30.0,
            // 이미지 넣는 버튼
            child: InkWell(
              child: Image.asset(buttonListUrl),
              onTap: (){
                debugPrint('좋아요버튼');
              },
            ),
          ),
        ),
      ],
    );
  }
}


// 컨텐츠이름 컨테이너 클래스
class ContentNameContainer extends StatefulWidget {
  const ContentNameContainer({
    Key? key,
    required this.userNameUrl,
    this.leftMargin,
    this.topMargin,
    this.rightMargin,
    this.bottomMargin,
  }) : super(key: key);
  
  final String userNameUrl;
  final double? leftMargin;
  final double? topMargin;
  final double? rightMargin;
  final double? bottomMargin;

  @override
  State<ContentNameContainer> createState() => _ContentNameContainerState();
}

class _ContentNameContainerState extends State<ContentNameContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45.0,
        margin: EdgeInsets.fromLTRB(
          widget.leftMargin?? 0,
          widget.topMargin?? 0,
          widget.rightMargin?? 0,
          widget.bottomMargin?? 0,
        ),
        child: AspectRatio(
          aspectRatio: 1.5,
          child: Text(
            widget.userNameUrl,
            textScaleFactor: 1.0,
            style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

// 컨텐츠 텍스트 컨테이너 클래스
class ContentTextContainer extends StatelessWidget {
  const ContentTextContainer({
    Key? key,
    required this.textContentUrl,
    this.leftMargin,
    this.topMargin,
    this.rightMargin,
    this.bottomMargin,
  }) : super(key: key);

  final String textContentUrl;
  final double? leftMargin;
  final double? topMargin;
  final double? rightMargin;
  final double? bottomMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 100.0,
      margin: EdgeInsets.fromLTRB(
        leftMargin?? 0,
        topMargin?? 0,
        rightMargin?? 0,
        bottomMargin?? 0,
      ),
      child: Text(textContentUrl),
    );
  }
}

