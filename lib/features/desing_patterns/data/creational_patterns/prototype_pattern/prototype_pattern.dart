import 'package:patterns_guide_app/features/desing_patterns/domain/entities/desing_pattern.entity.dart';
import 'steps/steps.index.dart';

DesingPattern prototypePattern = DesingPattern(
  name: "Prototype",
  smallDescription: "Crear objetos a partir de un prototipo.",
  description: _descriptionPattern,
  whereToUse: _whenToUse,
  exampleSteps: _steps,
  imageUrl: "assets/patterns/04_Prototype/prototype-mini.png",
);


String _descriptionPattern = """
# Propósito
$_description \n
![](assets/patterns/04_Prototype/prototype.png)

## Pros
$_advantages \n
## Contras
$_disadvantages \n
""";

String _description = """
El patrón de diseño Prototype (Prototipo) es un patrón creacional que permite crear nuevos objetos clonando un objeto existente (el prototipo) en lugar de crearlos desde cero utilizando constructores. 
* Esto es especialmente útil cuando la creación de un objeto es costosa en términos de tiempo o recursos, o cuando quieres crear una copia exacta y modificable del objeto sin acoplarte a sus clases concretas.
""";

String _advantages = """
* Creación de Objetos Costosos: Permite crear nuevos objetos de manera más eficiente que instanciar la clase, especialmente si el constructor realiza operaciones pesadas (como cargar datos de una base de datos).
* Independencia de Clases Concretas: Permite crear copias de un objeto sin necesidad de conocer su clase concreta. Solo se necesita la interfaz del prototipo (el método de clonación).
* Configuración Dinámica: Permite crear nuevos objetos a partir de un objeto ya configurado, evitando la necesidad de recrear esa configuración cada vez.
""";

String _disadvantages = """
* Clonación Compleja: La implementación de la clonación (particularmente la clonación profunda) puede ser complicada. Hay que asegurarse de que todos los campos del objeto y sus objetos referenciados se clonen correctamente.
* Ciclos de Referencia: Si el objeto tiene referencias circulares a otros objetos, el proceso de clonación profunda puede volverse muy complejo o incluso imposible de manejar correctamente.
""";



String _whenToUse = """
# Aplicabilidad
Imagina que estás desarrollando un juego donde necesitas crear muchos monstruos o personajes con atributos iniciales idénticos (ej. un ejército de orcos). 
* Instanciar miles de orcos con new Orc() y luego configurar sus 10 atributos uno por uno es ineficiente y tedioso.

El patrón Prototype te permite:
* Crear un único objeto prototipo de orco (OrcPrototype) con todos los atributos base ya establecidos.
* Cuando necesites un nuevo orco, simplemente clonas el prototipo (ej: nuevoOrco = orcPrototype.clone()).
* Opcionalmente, solo modificas los atributos específicos que deben ser diferentes en la copia (ej: nuevoOrco.setName("Grunt")).

Esto es mucho más rápido y limpio que la creación repetida.

# Cuándo usar
* Cuando la creación de un objeto es costosa (por ejemplo, requiere una conexión a base de datos, lectura de archivos grandes, etc.) y necesitas muchas instancias similares.
* Cuando deseas desacoplar el código de la creación de objetos de las clases concretas de los productos (creando objetos por clonación en lugar de instanciación).
* Cuando quieres crear muchos objetos que solo difieren en una pequeña parte de su estado.

## Contestar la siguiente pregunta
* ¿Es costoso o ineficiente crear un objeto, y necesito muchas copias de él que sean idénticas o muy similares al original?
  * Por ejemplo, al crear múltiples objetos a partir de una plantilla ya configurada:
    * Un editor gráfico que permite clonar formas (círculos, rectángulos) con atributos predefinidos.
    * Un sistema de gestión de documentos que permite duplicar plantillas de documentos con formato y contenido base.

## Ejemplos en la vida real
* Sistemas de edición gráfica que permiten clonar objetos gráficos.
* Juegos que requieren la creación de múltiples entidades similares (ej. enemigos, NPCs).
* Sistemas de gestión de documentos que permiten duplicar plantillas.
""";


List<String> _steps = [
  hypotheticalExample, step1, step2, step3, explanation
];