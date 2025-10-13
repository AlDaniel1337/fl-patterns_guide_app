import 'package:get/get.dart';
import 'package:patterns_guide_app/core/navigation/navigation.dart';
import 'package:patterns_guide_app/core/navigation/routes.enum.dart';
import 'package:patterns_guide_app/features/desing_patterns/data/data.index.dart';
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
  
  final List<DesingPattern> _creationalPatterns = [
    builderPattern, factoryMethodPattern, abstractFactoryPattern, prototypePattern,
    singletonPattern, factoryFunctionPattern,
  ];
  final List<DesingPattern> _structuralPatterns = [
    adapterPattern, bridgePattern, compositePattern, decoratorPattern,
    facadePattern, flyweightPattern, proxyPattern,
  ];
  final List<DesingPattern> _behaviorPatterns = [
    strategyPattern, observerPattern, commandPattern, statePattern, templateMethodPattern,
    iteratorPattern, mediatorPattern, mementoPattern, chainOfResponsibilityPattern,
    visitorPattern,
  ];
  List<DesingPattern> patterns = [];
  late DesingPattern selectedPattern;

  selectPatterns(int index){
    if(index == 0){
      patterns = _creationalPatterns;
    } else if(index == 1){
      patterns = _structuralPatterns;
    } else if(index == 2){
      patterns = _behaviorPatterns;
    }
    Navigation.goToPage( page: Routes.patternsMenuPage );
  }

  showSelectedPattern(DesingPattern pattern){
    selectedPattern = pattern;
    Navigation.goToPage( page: Routes.desingPatternsDetailsPage );
  }



}