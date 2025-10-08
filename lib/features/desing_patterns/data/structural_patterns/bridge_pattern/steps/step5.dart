String step5 = """
### Uso.
```dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Bridge en Flutter")),
        body: Builder(
          builder: (context) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Notificación normal con Snackbar
                    Notificacion notif =
                        NotificacionNormal(SnackbarImplementacion());
                    notif.enviar(context, "Hola desde Snackbar");
                  },
                  child: const Text("Mostrar Snackbar"),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Notificación urgente con Dialog
                    Notificacion notif =
                        NotificacionUrgente(DialogImplementacion());
                    notif.enviar(context, "Hola desde Dialog");
                  },
                  child: const Text("Mostrar Dialog"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```
""";