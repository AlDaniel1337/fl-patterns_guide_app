import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patterns_guide_app/features/japones/data/topics/index.dart';
import 'package:patterns_guide_app/features/japones/presentation/widgets/index.dart';

class Intenciones extends StatelessWidget {

  static const String route = "/Intenciones";

   
  const Intenciones({super.key});
  
  @override
  Widget build(BuildContext context) {

    _IntencionesController controller = Get.put(_IntencionesController());

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        _Buttons(),

        Obx( () {
          var index = controller.index.value;
          return Topic( topic: controller.pages[ index ] );
        })
      ],
    );
  }
}

class _Buttons extends StatelessWidget {
  const _Buttons();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: Get.find<_IntencionesController>().pages.map(( topic ) => 
        CustomButton(
          width: 140,
          color: Colors.blue,
          child: Text(topic.title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
          onTap: (){
            int index = Get.find<_IntencionesController>().pages.indexOf(topic);
            Get.find<_IntencionesController>().index.value = index;
          }
        )
      ).toList()
    );
  }
}

class _IntencionesController extends GetxController{
  var index = 0.obs;
  final pages = [ yotei, tsumori, formaVolitiva ];
}