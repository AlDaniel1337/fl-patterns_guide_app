String step4 = """
### Creador concreto: implementa el Factory Method.

**Creador concreto: fabrica Botón Android**
```dart
class BotonAndroidFactory extends BotonFactory {
  @override
  Boton crearBoton() => BotonAndroid();
}
```

**Creador concreto: fabrica Botón iOS**
```dart
class BotonIOSFactory extends BotonFactory {
  @override
  Boton crearBoton() => BotonIOS();
}
```
""";