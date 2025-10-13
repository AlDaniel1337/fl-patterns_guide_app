import 'package:patterns_guide_app/features/desing_patterns/domain/entities/desing_pattern.entity.dart';
import 'steps/steps.index.dart';

DesingPattern mementoPattern = DesingPattern(
  name: "Memento",
  smallDescription: "Permite capturar y almacenar el estado interno de un objeto sin violar su encapsulamiento, para poder restaurarlo posteriormente.",
  description: _descriptionPattern,
  whereToUse: _whenToUse,
  exampleSteps: _steps,
  imageUrl: "assets/patterns/20_Memento/memento-mini.png",
);


String _descriptionPattern = """
# Propósito
$_description \n
![](assets/patterns/20_Memento/memento-es.png)

## Pros
$_advantages \n
## Contras
$_disadvantages \n
""";

String _description = """
El patrón de diseño Memento (Recuerdo) es un patrón de comportamiento que permite **guardar y restaurar el estado interno** de un objeto sin violar el encapsulamiento. 
Se utiliza para implementar funcionalidades de "**deshacer**" (undo) o **puntos de control** (checkpoints) al guardar una "instantánea" del objeto en un momento dado.
""";

String _advantages = """
* **Encapsulamiento Preservado**: La clase que necesita guardar su estado (el **Originador**) puede crear un Memento con una instantánea de sus datos, pero solo **el Originador puede acceder al estado** completo del Memento. Esto protege la integridad del objeto.
* **Fácil Restauración**: Permite que el estado anterior de un objeto sea restaurado de manera simple, ya que el Memento almacena el estado completo necesario.
* **Separación de Responsabilidades**: Separa la responsabilidad de guardar el estado (Originador) de la responsabilidad de custodiar ese estado (Celador/Cuidador).
""";

String _disadvantages = """
* **Costo de Memoria**: Si el Originador es grande o cambia de estado con frecuencia, almacenar muchos Mementos puede consumir una gran cantidad de memoria RAM.
* **Gestión de Mementos**: El Celador (la clase que almacena los Mementos, a menudo un historial) debe saber cuándo guardar un Memento y cuándo restaurarlo, lo que puede complicar la lógica de gestión de historial.
* **Serialización**: Si el Memento necesita ser transferido o persistido, los problemas de serialización de objetos grandes pueden surgir.
""";



String _whenToUse = """
# Aplicabilidad
Imagina que estás desarrollando un editor gráfico y necesitas permitir al usuario deshacer sus acciones (mover, rotar, cambiar color).

* **Originador**: La clase `Canvas` (el editor) es el objeto cuyo estado queremos guardar. El Canvas tiene un método `save()` que crea y devuelve un nuevo Memento.
* **Memento**: La clase `Snapshot` (el Memento) es un objeto simple y opaco (solo almacena datos) que contiene el estado interno del Canvas (ej: las coordenadas y colores de todas las figuras).
* **Celador (CareTaker)**: La clase `History` mantiene una pila (stack) de objetos `Snapshot`.
* Cuando el usuario hace un cambio, el `History` pide al `Canvas` un Memento: `history.push(canvas.save())`.
* Cuando el usuario pulsa "Deshacer", el `History` recupera el último Memento: `snapshot = history.pop()`, y el `Canvas` restaura su estado: `canvas.restore(snapshot)`.


# Cuándo usar
* Cuando necesitas guardar instantáneas del estado de un objeto para poder **restaurarlo a un estado anterior** (por ejemplo, implementar la funcionalidad de "deshacer").
* Cuando guardar el estado del objeto es necesario, pero **no quieres exponer** los detalles de la estructura interna de ese objeto al resto de las clases (manteniendo el encapsulamiento).

## Contestar la siguiente pregunta
* ¿Necesito guardar el estado de un objeto para poder restaurarlo a un punto anterior, sin que las clases de gestión del historial conozcan la estructura interna de ese objeto?
  * Por ejemplo:
    * Videojuegos: Guardar el estado actual del juego (puntos de vida, posición, inventario) en un punto de guardado (save state).
    * Transacciones: Guardar el estado de un objeto de negocio antes de una serie de operaciones para poder revertirlas en caso de fallo.

## Ejemplos en la vida real
* Funcionalidad de "deshacer" en editores de texto o gráficos.
* Puntos de control en videojuegos.
""";


List<String> _steps = [
  hypotheticalExample, step1, step2, step3, step4, explanation
];