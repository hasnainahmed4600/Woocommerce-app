

import 'package:diinsel/ui/carts_view.dart';
import 'package:diinsel/ui/main_view/category_page.dart';
import 'package:diinsel/ui/main_view/orders_view.dart';
import 'package:diinsel/ui/main_view/super_wallet.dart';
import 'package:diinsel/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:diinsel/ui/main_view/profile_view.dart';
import '../../app/locator.dart';
import '../../view_models/navigation_view_model.dart';

class MainView extends StatefulWidget {
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NavigationViewModel>.reactive(builder: (context,viewModel,child){
      return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: NavBar(),
          body: getPage(viewModel.selectedTab),
        ),
      );
    }, viewModelBuilder: () => locator<NavigationViewModel>(),disposeViewModel: false,);
  }
  Widget getPage(int selectedIndex) {
    switch(selectedIndex) {
      case 0:
       return CategoryPage();
      case 1:
        return CartsView();
      case 2:
        return SuperWallet();
      case 3:
        return OrdersPage();
      case 4:
        return ProfileView();
      default :
        return CategoryPage();
    }
  }
}
