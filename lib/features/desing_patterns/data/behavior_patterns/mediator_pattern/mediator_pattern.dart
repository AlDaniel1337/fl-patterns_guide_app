import 'package:patterns_guide_app/features/desing_patterns/domain/entities/desing_pattern.entity.dart';
import 'steps/steps.index.dart';

DesingPattern mediatorPattern = DesingPattern(
  name: "Mediator",
  smallDescription: "Define un objeto que encapsula cómo interactúan un conjunto de objetos. Promueve el desacoplamiento al evitar que los objetos se refieran entre sí explícitamente.",
  description: _descriptionPattern,
  whereToUse: _whenToUse,
  aplicability: _aplicability,
  exampleSteps: _steps,
  imageUrl: "assets/patterns/19_Mediator/mediator-mini.png",
);


String _descriptionPattern = """
# Propósito
$_description \n
![](assets/patterns/19_Mediator/mediator.png)

## Pros
$_advantages \n
## Contras
$_disadvantages \n
""";

String _description = """
El patrón de diseño Mediator (Mediador) es un patrón de comportamiento que define un objeto **que encapsula cómo interactúan un conjunto de objetos** (llamados **Colegas** o Colleagues). 
Promueve el **acoplamiento débil** al evitar que los objetos se comuniquen directamente entre sí. En su lugar, toda la comunicación pasa por el objeto Mediador
""";

String _advantages = """
* **Acoplamiento Débil**: Reduce las dependencias entre los Colegas. Cada Colega solo necesita conocer a su Mediador, no a la miríada de otros Colegas con los que interactúa.
* **Centralización de Control**: La lógica compleja de comunicación se centraliza en un solo lugar (el Mediador), haciendo que sea más fácil de entender y mantener.
* **Simplificación de Colegas**: Las clases de los Colegas se simplifican significativamente porque ya no tienen que contener la lógica para manejar la comunicación con otros Colegas.
""";

String _disadvantages = """
* **Riesgo de God Object**: El Mediador puede convertirse en un "God Object" (Objeto Dios) si centraliza demasiada lógica de negocio. Esto lo hace complejo, difícil de mantener y de testear.
* **Rendimiento**: En sistemas con comunicaciones extremadamente frecuentes, la capa de indirección introducida por el Mediador podría añadir una pequeña sobrecarga de rendimiento, aunque esto es generalmente insignificante.
""";

String _aplicability = """
# Aplicabilidad
Imagina un sistema de **chat de grupo** donde varios usuarios (`User` o Colegas) interactúan entre sí. Sin un Mediador, cada usuario necesitaría tener una referencia a todos los demás usuarios para enviarles mensajes.

* Mediador (Interfaz): Una interfaz genérica (`ChatMediator`) con un método como `sendMessage(message, user)`.
* Colega (Interfaz): Una interfaz para los componentes que se comunican, con métodos como `receiveMessage(message)`.
* Mediador Concreto: La clase `GroupChat` implementa `sendMessage()`. Cuando recibe un mensaje, decide qué otros usuarios deben recibirlo.
* Colegas Concretos: Clases como `ChatUser`. Cuando un `ChatUser` quiere enviar un mensaje, simplemente lo envía a su Mediador: `mediator.sendMessage("Hola a todos", this)`.

La clase `ChatUser` no tiene idea de cuántos otros usuarios hay, ni de cómo se maneja la difusión del mensaje; solo sabe que debe hablar con el `GroupChat` (el Mediador).
""";

String _whenToUse = """
# Cuándo usar
* Cuando un conjunto de objetos se comunica de forma compleja, pero bien definida, y **las dependencias resultantes son difíciles de manejar** y modificar.
* Cuando quieres **reutilizar un Colega** sin tener que crear subclases para adaptarlo a nuevas interacciones con otros objetos.
* Cuando la **lógica de interacción** de un subsistema debe ser **centralizada** y controlada desde un único punto.

## Contestar la siguiente pregunta
* ¿Tengo un grupo de objetos que se comunican de forma compleja, y necesito centralizar su lógica de interacción para reducir las dependencias directas entre ellos?
  * Por ejemplo:
    * Formularios GUI: Un | gestiona la interacción entre los componentes de un formulario (como un botón que se activa solo cuando el campo de texto y el checkbox cumplen ciertas condiciones).
    * Control de Tráfico Aéreo: Una torre de control (Mediador) centraliza la comunicación entre varios aviones (Colegas) para evitar colisiones.

## Ejemplos en la vida real
* Sistemas de chat o mensajería donde un servidor central (Mediador) gestiona la comunicación entre múltiples clientes (Colegas).
* Interfaces gráficas de usuario (GUI) donde un controlador central (Mediador) maneja la interacción entre varios componentes de la interfaz (botones, campos de texto, etc.).
* Sistemas de control de tráfico aéreo donde una torre de control (Mediador) coordina la comunicación entre múltiples aviones (Colegas).
""";


List<String> _steps = [
  hypotheticalExample, step1, step2, step3, step4, explanation
];