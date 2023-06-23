class FavoriteList {
  String favoriteDate;
  String favoriteContents;

  //생성자
  FavoriteList({
    required this.favoriteDate,
    required this.favoriteContents,
  });


  void favoriteList() {
    var fvList = FavoriteList(
        favoriteDate: favoriteDate,
        favoriteContents: favoriteContents);
  }
}