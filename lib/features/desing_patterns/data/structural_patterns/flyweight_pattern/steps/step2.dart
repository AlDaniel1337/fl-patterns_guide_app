String step2 = """
### Flyweight Factory
Administra los iconos y los reutiliza si ya existen

```dart
class IconoFactory {
  static final Map<String, IconoFlyweight> _cache = {};

  static IconoFlyweight obtenerIcono(String tipo) {
    if (_cache.containsKey(tipo)) {
      debugPrint("♻️ Reutilizando ícono: \$tipo");
      return _cache[tipo]!;
    }

    debugPrint("🆕 Creando nuevo ícono: \$tipo");
    late IconoFlyweight icono;

    switch (tipo) {
      case 'alerta':
        icono = const IconoFlyweight(Icons.warning, Colors.red);
        break;
      case 'info':
        icono = const IconoFlyweight(Icons.info, Colors.blue);
        break;
      case 'ok':
        icono = const IconoFlyweight(Icons.check_circle, Colors.green);
        break;
      default:
        icono = const IconoFlyweight(Icons.help, Colors.grey);
    }

    _cache[tipo] = icono;
    return icono;
  }
}
```
""";