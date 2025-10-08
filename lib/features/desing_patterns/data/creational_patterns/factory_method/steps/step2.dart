String step2 = """
### Productos concretos.
**Implementación de los metodos definidos en la interface**

**Producto concreto: Botón estilo Android**
```dart
class BotonAndroid implements Boton {
  @override
  Widget render(String texto, VoidCallback onPressed) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
      ),
      onPressed: onPressed,
      child: Text('Botón Android: \$texto'),
    );
  }
}
```

**Producto concreto: Botón estilo iOS**
```dart
class BotonIOS implements Boton {
  @override
  Widget render(String texto, VoidCallback onPressed) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
      ),
      onPressed: onPressed,
      child: Text('Botón iOS: \$texto'),
    );
  }
}
```
""";