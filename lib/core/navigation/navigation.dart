import 'package:get/get.dart';
import 'package:patterns_guide_app/core/navigation/routes.enum.dart';
import 'package:patterns_guide_app/features/home/home.dart';

class Navigation{

  // Ruta principal
  static const String home = HomePage.route;
  
  static List<GetPage> getRoutes(){    

    List<GetPage> pages = Routes.values.map( 
      (route) => GetPage(name: route.url, page:() => route.page) 
    ).toList();
    
    return pages;
  }

  static void goToPage({required Routes page}) => Get.toNamed( page.url );

}  