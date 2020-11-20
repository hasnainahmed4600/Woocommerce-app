import 'package:diinsel/app/locator.dart';
import 'package:diinsel/utils/color_utils.dart';
import 'package:diinsel/utils/image_utils.dart';
import 'package:diinsel/utils/extensions.dart';
import 'package:diinsel/utils/text_style_utils.dart';
import 'package:diinsel/view_models/navigation_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class NavBar extends StatelessWidget {
  final List icons = [ImageUtils.storeIcon,ImageUtils.cartIcon,ImageUtils.offersIcon,ImageUtils.ordersIcon,ImageUtils.profileIcon];
  final List selectedIcons = [ImageUtils.selectedStoreIcon,ImageUtils.selectedCartIcon,ImageUtils.selectedOffersIcon,ImageUtils.selectedOrdersIcon,ImageUtils.selectedProfileIcon];
  final List names = ['tienda','Carro','Superwallet','Pedidos','Perfil'];
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NavigationViewModel>.reactive(
      builder: (context, viewModel, child) {
        return Container(
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Color(0xFF979797),width: .5))
          ),
          height: 7.toHeight(),
          child: Row(
            children: getNavigationTabs(viewModel)
          ),
        );
      },
      viewModelBuilder: () => locator<NavigationViewModel>(),
      disposeViewModel: false,);
  }

  List<Widget> getNavigationTabs(NavigationViewModel viewModel) =>
      List.generate(5,
            (index) => Expanded(child: InkWell(
              onTap: () {
                viewModel.updateSelectedTab(index);
              },
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                      Image.asset(viewModel.selectedTab == index? selectedIcons[index] : icons[index],width: 6.toImage(),height: 6.toImage(),),
                      SizedBox(height: .5.toHeight(),),
                      Text(names[index],style: viewModel.selectedTab == index? TextStyleUtils().navSelected : TextStyleUtils().navUnSelected,)
                      ],
                  ),
               ),
            ),
      );
}
