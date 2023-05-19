import 'package:flutter/foundation.dart';

class FavoriteItemProvider with ChangeNotifier {
  List<int> _selectedItem = [];
  List<int> get seletectedItem => _selectedItem;

  void addItems(int value) {
    _selectedItem.add(value);
    notifyListeners();
  }
  void removeItems(int value) {
    _selectedItem.remove(value);
    notifyListeners();
  }
}
