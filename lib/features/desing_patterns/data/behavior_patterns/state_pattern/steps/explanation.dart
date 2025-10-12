String explanation = """
### Explicación rápida:
* `EstadoConexion` → interfaz común para todos los estados.
* `EstadoDesconectado`, `EstadoConectando`, `EstadoConectado` → clases que definen el comportamiento específico.
* `ConexionWiFi` → el contexto, mantiene una referencia al estado actual y delega en él su comportamiento.
* `UI (Flutter)` → solo muestra el estado actual y delega el cambio al contexto.
""";