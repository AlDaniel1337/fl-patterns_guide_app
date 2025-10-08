import 'package:get/get.dart';
import 'package:patterns_guide_app/features/desing_patterns/data/creational_patterns/builder/builder.dart';
import 'package:patterns_guide_app/features/desing_patterns/domain/entities/desing_pattern.entity.dart';

/// DesingPattersController _desingPattersController = Get.put(DesingPattersController());
/// DesingPattersController desingPattersController = Get.put(DesingPattersController());

class DesingPattersController extends GetxController{

  final selectedIndex = 0.obs;

  final _showPurpose = true.obs;
  bool get showPurpose => _showPurpose.value;
  void toggleShowPurpose() {
    _showPurpose.value = true;
    _showUsage.value = false;
    _showExample.value = false;
  }

  final _showUsage = false.obs;
  bool get showUsage => _showUsage.value;
  void toggleShowUsage() {
    _showPurpose.value = false;
    _showUsage.value = true;
    _showExample.value = false;
  }

  final _showExample = false.obs;
  bool get showExample => _showExample.value;
  void toggleShowExample() {
    _showPurpose.value = false;
    _showUsage.value = false;
    _showExample.value = true;
  }
  
  List<DesingPattern> creationalPatterns = [
    builderPattern,
  ];

}