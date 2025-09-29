import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patterns_guide_app/features/japones/data/topics/index.dart';
import 'package:patterns_guide_app/features/japones/presentation/widgets/index.dart';


class Listados extends StatelessWidget {
   
  const Listados({super.key});

  @override
  Widget build(BuildContext context) {

    _ListsController controller = Get.put(_ListsController());

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
      children: Get.find<_ListsController>().pages.map(( topic ) => 
        CustomButton(
          width: 80,
          color: Colors.blue,
          child: Text(topic.title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
          onTap: (){
            int index = Get.find<_ListsController>().pages.indexOf(topic);
            Get.find<_ListsController>().index.value = index;
          }
        )
      ).toList()
    );
  }
}


class _ListsController extends GetxController{
  var index = 0.obs;
  final pages = [ toListado, tedeListado, yaListado, tariListado ];
}