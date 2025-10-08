String explanation = """
### Explicación rápida:
* `AppConfig._internal()` → constructor privado que inicializa valores por defecto.
* `static final AppConfig _instance` → mantiene única instancia global.
* `factory AppConfig()` → devuelve siempre la misma instancia.
* `config` → accede a la misma instancia, y cualquier cambio se refleja en toda la app.
""";