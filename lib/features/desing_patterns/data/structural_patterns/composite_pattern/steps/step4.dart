String step4 = """
### Uso

```dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Creamos un menú usando Composite
    final menuPrincipal = MenuGroup("Menú Principal");

    final cuenta = MenuGroup("Cuenta");
    cuenta.add(MenuItem("Perfil", Icons.person));
    cuenta.add(MenuItem("Configuración", Icons.settings));

    final ayuda = MenuGroup("Ayuda");
    ayuda.add(MenuItem("FAQ", Icons.help));
    ayuda.add(MenuItem("Contacto", Icons.email));

    menuPrincipal.add(cuenta);
    menuPrincipal.add(ayuda);
    menuPrincipal.add(MenuItem("Salir", Icons.exit_to_app));

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Composite en Flutter")),
        body: ListView(
          children: [menuPrincipal.render()],
        ),
      ),
    );
  }
}
```
""";