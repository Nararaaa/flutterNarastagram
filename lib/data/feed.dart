
class UserInfo {
  String userName = '';
  String profile = '';
}

class UserInfoA {
  UserInfoA(this.userName, this.profile);

  String userName;
  String profile;
}

class FeedContents {
  FeedContents({
    required this.userName,
    required this.profile,
    required this.textFeed,
    required this.image,
  });

  String userName;
  String profile;
  String textFeed;
  String image;

  void feed() {
    var info = FeedContents(
        userName: userName,
        profile: profile,
        textFeed: textFeed,
        image: image);
  }
}

/*
class AA {

  void sample() {
    var info3 = UserInfo();
    info3.userName = 'aa';
    info3.profile = 'bb';

    var info2 = UserInfo()
      ..userName = 'aa'
      ..profile = 'bb';

    var infoA = UserInfoA('aa', 'bb');

    var info = FeedContents(
        userName: 'aa',
        profile: 'dd',
        textFeed: 'bb',
        image: 'dd');
  }
}
*/
