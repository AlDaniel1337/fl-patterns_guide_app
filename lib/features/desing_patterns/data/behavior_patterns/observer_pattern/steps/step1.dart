String step1 = """
###  Sujeto (Subject)
Notifica a los observadores cuando cambia su estado.

```dart
class Contador extends ChangeNotifier {
  int _valor = 0;

  int get valor => _valor;

  void incrementar() {
    _valor++;
    notifyListeners(); // 🔔 Notifica a todos los observadores
  }

  void reiniciar() {
    _valor = 0;
    notifyListeners();
  }
}
```
""";