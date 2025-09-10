import 'package:get/get.dart';
import 'package:patterns_guide_app/core/navigation/routes.enum.dart';
import 'package:patterns_guide_app/features/home/home.dart';

class Navigation{

  // Ruta principal
  static const String home = HomePage.route;
  
  static List<GetPage> getRoutes(){    
    List<GetPage> pages = [
      GetPage(name: HomePage.route, page:() => const HomePage()),
    ];
    
    return pages;
  }

  static goToPage({required Routes page}) => Get.toNamed( page.url );

}  