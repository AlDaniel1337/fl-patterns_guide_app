String step2 = """
### Implementación (lado implementor).

```dart
class SnackbarImplementacion implements INotificacionImplementacion {
  @override
  void mostrar(BuildContext context, String mensaje) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("\$mensaje")),
    );
  }
}
```

```dart
class DialogImplementacion implements INotificacionImplementacion {
  @override
  void mostrar(BuildContext context, String mensaje) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Notificación"),
        content: Text("\$mensaje"),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text("OK"),
          )
        ],
      ),
    );
  }
}
```
""";