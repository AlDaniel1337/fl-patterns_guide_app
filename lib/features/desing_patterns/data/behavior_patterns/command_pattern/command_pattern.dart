import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/desing_patterns/domain/entities/desing_pattern.entity.dart';
import './steps/steps.index.dart';

DesingPattern commandPattern = DesingPattern(
  name: "Command",
  smallDescription: "Encapsula una solicitud como un objeto, lo que permite parametrizar a los clientes con diferentes solicitudes.",
  description: _descriptionPattern,
  whereToUse: _whenToUse,
  exampleSteps: _steps,
  icon: Icons.build,
);


String _descriptionPattern = """
# Propósito
$_description \n
![](assets/patterns/15_Command/command-es.png)

## Pros
$_advantages \n
## Contras
$_disadvantages \n
""";

String _description = """
El patrón de diseño Command (Comando) es un patrón de comportamiento que **encapsula una solicitud como un objeto**, permitiendo así parametrizar clientes con diferentes solicitudes, poner las operaciones en cola o registrarlas, y soportar operaciones que se pueden deshacer (undo).
Convierte las acciones o llamadas a métodos en objetos.
""";

String _advantages = """
* **Desacoplamiento**: Desacopla la clase que invoca la operación (el Invocador) de la clase que sabe cómo realizarla (el Receptor). El Invocador solo conoce la interfaz `Command`.
* **Deshacer/Rehacer (Undo/Redo)**: Facilita la implementación de sistemas con historial de operaciones, ya que el objeto Comando puede almacenar el estado necesario para revertir su acción.
* **Composición y Colas**: Permite componer comandos en comandos macro o colocarlos en colas de trabajo para su ejecución asíncrona.
* **Nuevas Funcionalidades**: Puedes añadir nuevas funcionalidades al objeto comando (como registro o logging) sin modificar el código del Receptor.
""";

String _disadvantages = """
**Más Clases**: Introduce una nueva clase para cada acción o solicitud diferente, lo que puede resultar en un gran número de clases si hay muchas operaciones distintas.
**Complejidad Inicial**: Aumenta la complejidad del diseño al requerir la creación de la interfaz `Command`, el `Invocador` y el `Receptor`, incluso para operaciones simples.
""";



String _whenToUse = """
# Aplicabilidad
Imagina un editor de texto o una aplicación con botones de interfaz de usuario. Tienes botones para "Abrir", "Guardar" e "Imprimir". La lógica de estos botones debe ser intercambiable y, además, necesitas una función de "Deshacer".

* **Receptor**: La clase que contiene la lógica de negocio (ej: `TextEditor` con métodos `open()`, `save()`, `print()`).
* **Comando (Interfaz)**: Una interfaz genérica (`Command`) con un método `execute()` y, opcionalmente, un `unexecute()`.
* **Comandos Concretos**: Clases como `OpenCommand`, `SaveCommand`, que implementan `execute()` y enrutan la llamada al método correspondiente del `TextEditor` (Receptor).
* **Invocador**: Los botones de la interfaz de usuario. Un botón no sabe cómo "abrir" o "guardar", solo sabe que, cuando se pulsa, debe llamar a `command.execute()`.

El botón puede configurarse en tiempo de ejecución para ejecutar cualquier comando, logrando flexibilidad. Además, para la función "Deshacer", la aplicación solo necesita mantener una pila de los comandos ejecutados que contienen la información necesaria para revertir su acción.

# Cuándo usar
* Cuando deseas **parametrizar objetos** con una acción a realizar, es decir, cuando un objeto no sabe exactamente qué hacer, pero sí sabe a quién preguntar.
* Cuando necesitas **especificar, poner en cola y ejecutar solicitudes en momentos diferentes**.
* Cuando quieres soportar operaciones que se pueden **deshacer y rehacer** (undo/redo).
* Cuando deseas **estructurar un sistema** en torno a transacciones, donde una transacción puede ser una secuencia de comandos.

## Contestar la siguiente pregunta
* ¿Necesito encapsular una acción o solicitud como un objeto para poder aplazar, registrar, poner en cola o deshacer su ejecución?
  * Por ejemplo:
    * Automatización del Hogar: Un botón físico (Invocador) se configura con un `TurnLightsOffCommand` (Comando) que afecta a una `SmartBulb` (Receptor).
    * Base de Datos: Una serie de comandos SQL que se encapsulan para formar una transacción que debe ser revertible.

## Ejemplos en la vida real
* **Sistemas de Menús**: Cada opción del menú puede ser un comando que encapsula la acción a realizar.
* **Sistemas de Deshacer/ Rehacer**: Aplicaciones como editores de texto o gráficos que permiten revertir acciones.
* **Colas de Trabajo**: Sistemas que procesan tareas en segundo plano, donde cada tarea es un comando.
""";


List<String> _steps = [
  hypotheticalExample, step1, step2, step3, step4, step5, explanation
];