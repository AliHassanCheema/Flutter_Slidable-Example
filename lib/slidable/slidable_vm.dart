import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class SlidableViewModel extends BaseViewModel {
  List<String> items = ['Slide', 'Slide', 'Slide', 'Slide'];

  onDelete(BuildContext context, int index) {
    items.removeAt(index);
    notifyListeners();
  }
}
