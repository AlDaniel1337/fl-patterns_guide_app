String step1 = """
### Clase singleton.
* Dentro de esta clase el constructor tiene que ser privado
* Además de tener una clase para la primer y única instanciación y retornarla.

```dart
class AppConfig {

  // Instancia privada estática
  static final AppConfig _instance = AppConfig._internal();

  // Atributos de configuración
  String themeColor;
  String apiBaseUrl;

  // Constructor privado
  AppConfig._internal()
      : themeColor = "blue",
        apiBaseUrl = "https://api.ejemplo.com";

  // Punto de acceso global
  factory AppConfig() {
    return _instance;
  }

  // Método de utilidad
  void updateConfig({String? themeColor, String? apiBaseUrl}) {
    if (themeColor != null) this.themeColor = themeColor;
    if (apiBaseUrl != null) this.apiBaseUrl = apiBaseUrl;
  }
}
```
""";