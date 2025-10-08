String step2 = """
### Uso.

**Cliente (Flutter UI)**
```dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Acceso al Singleton
    final config = AppConfig();
    config.updateConfig(themeColor: "green"); // cambiamos configuración global

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Singleton en Flutter")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ConfigCard(),
              ElevatedButton(
                onPressed: () {
                  // Cambiar configuración global desde cualquier parte
                  AppConfig().updateConfig(themeColor: "red");
                },
                child: const Text("Cambiar color a rojo"),
              ),
              const SizedBox(height: 20),
              ConfigCard(), // Refleja el mismo Singleton actualizado
            ],
          ),
        ),
      ),
    );
  }
}
```

**Widget para mostrar configuración**
```dart
class ConfigCard extends StatelessWidget {
  const ConfigCard({super.key});

  @override
  Widget build(BuildContext context) {
    final config = AppConfig(); // Acceso al mismo Singleton

    return Card(
      elevation: 4,
      child: ListTile(
        title: Text("Configuración Global"),
        subtitle: Text("Theme color: \${config.themeColor}\n"
            "API Base URL: \${config.apiBaseUrl}"),
      ),
    );
  }
}
```
""";