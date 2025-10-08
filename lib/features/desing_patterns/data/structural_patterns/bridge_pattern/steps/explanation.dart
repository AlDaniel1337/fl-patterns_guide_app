String explanation = """
### Explicación rápida:
* `INotificacionImplementacion` → lado implementación, define cómo mostrar notificaciones.
* `SnackbarImplementacion` y `DialogImplementacion` → implementaciones concretas.
* `Notificacion` → lado abstracción, usa una implementación sin acoplarse a ella.
* `NotificacionNormal` y `NotificacionUrgente` → refinan la abstracción.
* En la `UI`, puedes combinar cualquier tipo de notificación con cualquier implementación.
""";