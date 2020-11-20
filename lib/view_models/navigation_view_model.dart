

import 'package:stacked/stacked.dart';

class NavigationViewModel extends BaseViewModel {
  int selectedTab = 0;

  updateSelectedTab(int index) {
    if(index != selectedTab){
      selectedTab = index;
      notifyListeners();
    }
  }
}