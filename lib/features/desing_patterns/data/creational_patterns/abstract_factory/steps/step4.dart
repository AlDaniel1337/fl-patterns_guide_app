String step4 = """
### Implementación de Fábricas Concretas.
**Creamos las fábricas que producirán las familias de elementos (iOS o Android).**

**Fábrica Concreta para Android**
```dart
class AndroidUIFactory implements UIFactory {
  @override
  Boton createBoton() => BotonAndroid();

  @override
  CheckboxWidget createCheckbox() => CheckboxAndroid();
}
```

**Fábrica Concreta para iOS**
```dart
class IOSUIFactory implements UIFactory {
  @override
  Boton createBoton() => BotonIOS();

  @override
  CheckboxWidget createCheckbox() => CheckboxIOS();
}
```
""";