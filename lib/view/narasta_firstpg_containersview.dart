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
