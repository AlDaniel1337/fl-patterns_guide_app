String explanation = """
### Explicación rápida:
* `ServicioEmail`, `ServicioSMS`, `ServicioPush` → clases del subsistema complejo.
* `NotificacionFacade` → fachada que unifica el acceso y oculta los detalles de implementación.
* `El cliente (la UI)` solo conoce la fachada, no los servicios internos.
""";