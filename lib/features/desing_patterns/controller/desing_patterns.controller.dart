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
  final _showUsage = false.obs;
  final _showExample = false.obs;
  final _showAplicability = false.obs;

  bool get showPurpose => _showPurpose.value;
  void toggleShowPurpose() {
    _cleanSelection();
    _showPurpose.value = true;
  }

  bool get showUsage => _showUsage.value;
  void toggleShowUsage() {
    _cleanSelection();
    _showUsage.value = true;
  }

  bool get showExample => _showExample.value;
  void toggleShowExample() {
    _cleanSelection();
    selectedIndex.value = 0;
    _showExample.value = true;
  }

  bool get showAplicability => _showAplicability.value;
  void toggleShowAplicability() {
    _cleanSelection();
    _showAplicability.value = true;
  }

  void _cleanSelection() {
    _showPurpose.value = false;
    _showUsage.value = false;
    _showExample.value = false;
    _showAplicability.value = false;
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