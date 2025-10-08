String step5 = """
### Uso.
```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Cambia esta línea para probar iOS o Android
    BotonFactory factory = BotonAndroidFactory();
    // BotonFactory factory = BotonIOSFactory();

    Boton boton = factory.crearBoton();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Patrón Factory Method en Flutter")),
        body: Center(
          child: boton.render("Click aquí", () {
            debugPrint("¡Botón presionado!");
          }),
        ),
      ),
    );
  }
}
```
""";