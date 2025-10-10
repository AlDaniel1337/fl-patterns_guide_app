String step2 = """
### Clase real (Real Subject)

```dart
class ImagenReal implements ImagenUsuario {
  final String url;

  ImagenReal(this.url);

  @override
  Widget mostrar() {
    debugPrint("Cargando imagen real desde red: \$url");
    // Aquí simulamos carga real (en un caso real usarías Image.network)
    return Image.network(
      url,
      height: 100,
      width: 100,
      fit: BoxFit.cover,
    );
  }
}
```
""";