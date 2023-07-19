import 'package:flutter/material.dart';

// 상단 활동 날짜 컨테이너
class TitleDateContainer extends StatelessWidget {
  const TitleDateContainer({
    Key? key,
    this.leftMargin,
    this.topMargin,
    this.rightMargin,
    this.bottomMargin,
    this.titleDate,
  }) : super(key: key);

  final String? titleDate;
  final double? leftMargin;
  final double? topMargin;
  final double? rightMargin;
  final double? bottomMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 20.0,
      margin: EdgeInsets.fromLTRB(
          leftMargin?? 0,
          topMargin?? 0,
          rightMargin?? 0,
          bottomMargin?? 0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          titleDate??'',
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}


class ActivityDetailsContainer extends StatelessWidget {
  const ActivityDetailsContainer({
    Key? key,
    this.leftMargin,
    this.topMargin,
    this.rightMargin,
    this.bottomMargin,
    this.activityDetails,
    this.profileImage,
  }) : super(key: key);

  final String? profileImage;
  final String? activityDetails;
  final double? leftMargin;
  final double? topMargin;
  final double? rightMargin;
  final double? bottomMargin;
  final bool isTrue = true;
  final bool isContent = false;

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        isContent?
        ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.network(profileImage??''),
            ),
          ):
            isTrue?
            Container(
              width: 300.0,
              height: 15.0,
              margin: EdgeInsets.fromLTRB(
                  leftMargin?? 0,
                  topMargin?? 0,
                  rightMargin?? 0,
                  bottomMargin?? 0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  activityDetails??'',
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
              ),
            ):
            Container(
              height: 5.0,
            ),
      ],
    );
  }
}
