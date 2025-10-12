String explanation = """
### Explicación rápida:
* `Validador (Handler)`: clase base que define la estructura de la cadena.
* `EmailValidador`, `PasswordValidador`, `UppercaseValidador`: manejadores concretos que validan diferentes reglas.
  * Cada manejador:
    * Procesa el valor recibido.
    * Si no puede manejarlo, pasa el valor al siguiente en la cadena (siguiente?.manejar).
* El `cliente` (UI) construye la cadena y la usa para validar los datos secuencialmente.`
""";