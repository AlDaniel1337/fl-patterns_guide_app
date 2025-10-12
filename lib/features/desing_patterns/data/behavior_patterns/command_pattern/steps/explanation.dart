String explanation = """
### Explicación rápida:
* `Luz` → el receptor, contiene la lógica real (encender/apagar).
* `Comando` → interfaz base de los comandos.
* `EncenderComando`, `ApagarComando`, `AlternarComando` → encapsulan las acciones.
* `ControlRemoto` → el invocador, que ejecuta los comandos y puede deshacerlos.
* `Cliente (UI)` → simplemente dispara los comandos sin conocer su implementación.
""";