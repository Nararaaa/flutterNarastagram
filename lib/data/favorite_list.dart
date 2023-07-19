class FavoriteList {
  String favoriteDate;
  String favoriteContent;
  String? favoriteContents;
  String? profileImage;

  //생성자
  FavoriteList({
    this.profileImage,
    required this.favoriteDate,
    required this.favoriteContent,
    this.favoriteContents,
  });


  void favoriteList() {
    var fvList = FavoriteList(
      profileImage: profileImage,
      favoriteDate: favoriteDate,
      favoriteContent: favoriteContent,
      favoriteContents: favoriteContents,
    );
  }
}
