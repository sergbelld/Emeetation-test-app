import 'package:flutter/foundation.dart';

class Interest with ChangeNotifier {
  Interest({
    @required this.title,
    this.isFavorite = false,
  });

  final String title;
  bool isFavorite;

  void toggleFavoriteStatus() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
