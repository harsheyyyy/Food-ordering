import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:Food_ordering/controllers/auth_controller.dart';
import 'package:Food_ordering/controllers/cart_controller.dart';
import 'package:Food_ordering/controllers/popular_product.dart';
import 'package:Food_ordering/controllers/product_controller.dart';
import 'package:Food_ordering/controllers/user_controller.dart';
import 'package:Food_ordering/routes/route_helper.dart';
import 'package:Food_ordering/screens/food/detail_food.dart';
import 'package:Food_ordering/screens/food/more_food.dart';
import 'package:Food_ordering/uitls/scroll_behavior.dart';
import 'components/colors.dart';
import 'package:get/get.dart';
import 'package:Food_ordering/helper/get_dependecies.dart' as di;
//import 'helper/get_dependencies.dart' as di ;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<CartController>().getCartsData();
      return  GetBuilder<ProductController>(builder:(_){
          return GetBuilder<PopularProduct>(builder: (_){
            return GetMaterialApp(
              scrollBehavior: AppScrollBehavior(),
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                primaryColor: AppColors.mainColor,
                fontFamily: "Lato",
              ),

              initialRoute: RouteHelper.getSplashRoute(),
              getPages: RouteHelper.routes,
              defaultTransition: Transition.topLevel,
            );
          });
        });

  }
}
