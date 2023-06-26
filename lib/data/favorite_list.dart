class FavoriteList {
  String favoriteDate;
  String favoriteContents;
  String? favoriteContent;

  //생성자
  FavoriteList({
    required this.favoriteDate,
    required this.favoriteContents,
    this.favoriteContent,
  });


  void favoriteList() {
    var fvList = FavoriteList(
      favoriteDate: favoriteDate,
      favoriteContents: favoriteContents,
      favoriteContent: favoriteContent,
    );
  }
}
