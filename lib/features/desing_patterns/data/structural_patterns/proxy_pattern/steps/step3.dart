String step3 = """
### Proxy (sustituto)

```dart
class ImagenProxy implements ImagenUsuario {
  final String url;
  Widget? _imagenReal;

  ImagenProxy(this.url);

  @override
  Widget mostrar() {
    if (_imagenReal == null) {
      debugPrint("Mostrando imagen temporal mientras carga...");
      _imagenReal = ImagenReal(url).mostrar();
      return const CircleAvatar(
        radius: 50,
        child: Icon(Icons.person, size: 50),
      );
    } else {
      debugPrint("Imagen ya cargada, reutilizando...");
      return _imagenReal!;
    }
  }
}
```
""";
