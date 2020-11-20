import 'package:diinsel/ui/main_view/category_details.dart';
import 'package:diinsel/view_models/category.dart';
import 'package:diinsel/widgets/my_tab_bar.dart' as myTabBar;
import 'package:flutter/material.dart';
import 'package:diinsel/utils/extensions.dart';
import 'package:page_transition/page_transition.dart';
import 'package:diinsel/api_service.dart';

import '../../utils/color_utils.dart';
import '../../utils/gradient_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/text_style_utils.dart';
import '../../utils/text_style_utils.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage>
    with SingleTickerProviderStateMixin {
  APIService apiService;

  TabController controller;
  final titles = [
    '1.Elige una categoria para ordenar',
  ];
  @override
  void initState() {
    controller = TabController(length: titles.length, vsync: this);
    apiService = new APIService();
    super.initState();
  }

  List<Widget> getTabs() {
    return List.generate(
        titles.length,
        (index) => Container(
              height: 6.25.toHeight(),
              child: Center(
                child: Text(titles[index]),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 31.1.toHeight(),
          width: double.infinity,
          child: Stack(
            children: [
              Image.asset(
                ImageUtils.categoryBg,
                height: 31.1.toHeight(),
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Container(
                color: Colors.black.withOpacity(.45),
                height: 31.1.toHeight(),
                width: double.infinity,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: EdgeInsets.only(
                      top: 5.8.toHeight(), right: 5.8.toWidth()),
                  child: Image.asset(
                    ImageUtils.searchWhiteIcon,
                    width: 4.3.toImage(),
                    height: 4.3.toImage(),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(
                      top: 13.5.toHeight(), left: 5.8.toWidth()),
                  child: Text(
                    'Categorias',
                    style: TextStyleUtils().workWhiteSemiBold,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 6.25.toHeight(),
          width: double.infinity,
          color: Color(0xFF979797).withOpacity(.1),
          child: myTabBar.MyTabBar(
            onTap: (index) {
              controller.animateTo(index,
                  duration: Duration(milliseconds: 300));
              setState(() {});
            },
            isScrollable: true,
            unselectedLabelStyle: TextStyleUtils().workLightGreyMedium,
            unselectedLabelColor: MyColors.grey5.withOpacity(.5),
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: GradientUtils.progressBarGrident),
            labelColor: MyColors.grey5,
            labelStyle: TextStyleUtils().workGreyMedium,
            controller: controller,
            tabs: getTabs(),
          ),
        ),
        Expanded(
          child: myTabBar.TabBarView(
            controller: controller,
            children: [_categoriesList()],
          ),
        )
      ],
    );
  }

  Widget _categoriesList() {
    return new FutureBuilder(
      future: apiService.getCategories(),
      builder:(
          BuildContext context,
          AsyncSnapshot<List<Category>> model,
          ){
            if (model.hasData){
              return _categoriesPage(model.data);
            }
            return Center(child: CircularProgressIndicator(),);
      },
    );
  }

  Widget _categoriesPage(List<Category> categories) {
    return MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: GridView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: (context.screenWidth() /
                    (context.screenHeight() - 40.5.toHeight()))),
            itemBuilder: (context, index) {
              var data = categories[index];

              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          child: CategoryDetails()));
                },
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        data.image.url,
                        width: 30.toImage(),
                        height: 30.toImage(),
                      ),
                      SizedBox(
                        height: 1.toHeight(),
                      ),
                      Container(
                          height: 6.5.toHeight(),
                          child: Text(
                            data.categoryName,
                            style: TextStyleUtils().asapBlackRegular,
                            textAlign: TextAlign.center,
                          )),
                      Text(
                        data.categoryDesc,
                        style: TextStyleUtils().asapGreyRegular,
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: categories.length));
  }
}

