

import 'package:get/get.dart';
import 'package:patterns_guide_app/core/navigation/navigation.dart';
import 'package:patterns_guide_app/core/navigation/routes.enum.dart';
import 'package:patterns_guide_app/features/solid/data/solid_data.index.dart';
import 'package:patterns_guide_app/features/solid/domain/solid_principles.entity.dart';

/// SolidController _solidController = Get.put(SolidController());
/// SolidController solidController = Get.put(SolidController());

class SolidController extends GetxController{

  final _showDescription = true.obs;
  bool get showDescription => _showDescription.value;

  final _showCharacteristics = false.obs;
  bool get showCharacteristics => _showCharacteristics.value;

  final _showExample = false.obs;
  bool get showExample => _showExample.value;

  final _showWrongExample = false.obs;
  bool get showWrongExample => _showWrongExample.value;
  
  void toggleShowDescription() {
    disableAll();
    _showDescription.value = true;
  }
  void toggleShowCharacteristics() {
    disableAll();
    _showCharacteristics.value = true;
  }
  void toggleShowExample() {
    disableAll();
    _showExample.value = true;
  }

  void toggleShowWrongExample() {
    disableAll();
    _showExample.value = true;
    _showWrongExample.value = false;
  }
  void toggleShowCorrectExample() {
    disableAll();
    _showExample.value = true;
    _showWrongExample.value = true;
  }

  void disableAll() {
    _showDescription.value = false;
    _showCharacteristics.value = false;
    _showExample.value = false;
    _showWrongExample.value = false;
  }

  var selectedIndex = 0;

  void goToDetails(int index) {
    selectedIndex = index;
    Navigation.goToPage(page: Routes.principleDetailsPage);
  }

  final List<SolidPrinciples> principles = [
    singleResponsibilityPrinciple,
    openClosePrinciple,
    liskovSubstitutionPrinciple,
    interfaceSegregationPrinciple,
    dependencyInversionPrinciple,
  ];

}