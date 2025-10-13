import 'package:patterns_guide_app/features/desing_patterns/domain/entities/desing_pattern.entity.dart';
import 'steps/steps.index.dart';

DesingPattern facadePattern = DesingPattern(
  name: "Facade",
  smallDescription: "Proporciona una interfaz simplificada a un conjunto de interfaces en un subsistema.",
  description: _descriptionPattern,
  whereToUse: _whenToUse,
  exampleSteps: _steps,
  imageUrl: "assets/patterns/10_Facade/facade-mini.png",
);


String _descriptionPattern = """
# Propósito
$_description \n
![](assets/patterns/10_Facade/facade.png)

## Pros
$_advantages \n
## Contras
$_disadvantages \n
""";

String _description = """
El patrón de diseño **Facade** (Fachada) es un patrón estructural que **proporciona una interfaz unificada y simplificada** a un conjunto de interfaces en un subsistema complejo.
Su objetivo es hacer que el subsistema sea más fácil de usar al envolverlo en una sola clase simple.
""";

String _advantages = """
* **Simplicidad**: Reduce la complejidad para el código cliente al ocultar las múltiples clases y los detalles de las interacciones dentro del subsistema. El cliente solo interactúa con la Fachada.
* **Desacoplamiento**: Desacopla el código cliente del subsistema. Si el subsistema cambia, solo la Fachada necesita modificarse, protegiendo al cliente.
* **Organización**: Ayuda a organizar un sistema en capas (por ejemplo, una capa de Fachada sobre la lógica de negocio y los datos), mejorando la legibilidad.
""";

String _disadvantages = """
* **Riesgo de God Object**: Si la Fachada asume demasiadas responsabilidades y se convierte en el punto central de todo el subsistema, puede volverse demasiado grande y difícil de mantener, transformándose en un "God Object" (Objeto Dios).

* **Falta de Flexibilidad**: La Fachada solo ofrece un subconjunto de las funcionalidades del subsistema. Si el cliente necesita acceso a funciones más profundas o específicas, tendrá que eludir la Fachada y acceder directamente al subsistema complejo.
""";



String _whenToUse = """
# Aplicabilidad
Imagina que estás desarrollando un sistema de cine en casa (`HomeTheater`). Para ver una película, se necesita interactuar con varias clases complejas en un orden específico: `Amplificador`, `ReproductorDVD`, `Proyector`, `Luces`.

**Sin Fachada**: 
* El cliente debe recordar y ejecutar la siguiente secuencia de llamadas:
  * luces.dim(10)
  * proyector.encender()
  * amplificador.encender()
  * dvd.encender()
  * amplificador.setVolumen(5)
  * dvd.reproducir("Inception")

**Con Fachada**: 
* Creas la clase HomeTheaterFacade con un método simple:
  * El cliente solo llama a: `fachada.verPelicula("Inception")`
  * La Fachada se encarga internamente de orquestar todas las llamadas al `Amplificador`, `ReproductorDVD`, etc., simplificando enormemente el trabajo para el usuario de la Fachada.


# Cuándo usar
* Cuando necesitas **proporcionar una interfaz simple** a un sistema complejo que consta de muchas clases interdependientes.
* Cuando deseas **estructurar un subsistema en capas**, donde la Fachada actúa como el punto de entrada a cada capa.
* Cuando quieres **desacoplar el código cliente** de las clases internas de un subsistema.

## Contestar la siguiente pregunta
* ¿Tengo un subsistema con muchas clases complejas interconectadas, y necesito ofrecer una interfaz unificada y simple para acceder a sus funcionalidades comunes?
  * Por ejemplo:
    * Compilador: Una Fachada que ofrece un método simple compile(code) que internamente orquesta las clases de Lexer, Parser, CodeGenerator, etc.
    * API de Notificaciones: Una Fachada NotificationService.sendEmail() que gestiona la conexión, autenticación y formateo de los mensajes con múltiples clases internas

## Ejemplos en la vida real
* Sistemas de cine en casa (Home Theater Systems)
* APIs de servicios web (por ejemplo, AWS SDK)
""";


List<String> _steps = [
  hypotheticalExample, step1, step2, step3, explanation
];