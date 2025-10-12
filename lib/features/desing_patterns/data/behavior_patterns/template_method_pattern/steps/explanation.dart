String explanation = """
### Explicación rápida:
* `PagoTemplate` → clase base con el flujo general del pago (procesarPago()).
* `validarDatos()` y `enviarConfirmacion()` → pasos comunes, definidos en la clase base.
* `procesar()` → paso abstracto, implementado de forma distinta por cada método de pago.
* Subclases (`PagoTarjeta`, `PagoPayPal`) → redefinen solo los pasos necesarios.
* UI (`Flutter`) → invoca el flujo completo sin preocuparse de los detalles.
""";