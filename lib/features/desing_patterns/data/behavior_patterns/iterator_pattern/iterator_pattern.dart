import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/desing_patterns/domain/entities/desing_pattern.entity.dart';
import 'steps/steps.index.dart';

DesingPattern iteratorPattern = DesingPattern(
  name: "Iterator",
  smallDescription: "Proporciona una forma de acceder secuencialmente a los elementos de un objeto compuesto sin exponer su representación interna.",
  description: _descriptionPattern,
  whereToUse: _whenToUse,
  exampleSteps: _steps,
  icon: Icons.build,
);


String _descriptionPattern = """
# Propósito
$_description \n
![](assets/patterns/18_Iterator/iterator-es.png)

## Pros
$_advantages \n
## Contras
$_disadvantages \n
""";

String _description = """
El patrón de diseño Iterator (Iterador) es un patrón de comportamiento que proporciona una forma de **acceder secuencialmente a los elementos de un objeto agregado** (como una `lista`, un `árbol` o un `array`) sin exponer su representación interna.
Esencialmente, externaliza el proceso de recorrido.
""";

String _advantages = """
* **Acoplamiento Débil**: Desacopla la lógica de recorrido de la estructura de datos real que contiene los elementos. La colección no necesita saber cómo se recorre, y el cliente no necesita saber cómo se almacenan los datos.
* **Múltiples Recorridos**: Permite tener múltiples recorridos concurrentes en la misma colección, ya que cada Iterador mantiene su propio estado de recorrido.
* **Principio de Responsabilidad Única (SRP)**: El Iterador asume la responsabilidad de la travesía, liberando a la colección de esa tarea.
""";

String _disadvantages = """
* **Complejidad Adicional**: Introduce varias interfaces y clases nuevas (la interfaz de Iterador y las implementaciones concretas de Iterador), lo cual puede ser una sobrecarga para colecciones simples.
* **No Siempre Necesario**: En muchos lenguajes modernos, la implementación del Iterador ya está integrada en las colecciones estándar, por lo que rara vez es necesario implementarlo desde cero a menos que se esté creando una estructura de datos personalizada.
""";



String _whenToUse = """
# Aplicabilidad
Imagina que tienes una aplicación que gestiona diferentes tipos de colecciones de empleados, como un **árbol jerárquico** para gerentes y una **lista simple** para el personal de producción. Un cliente quiere iterar sobre ambas estructuras para imprimir todos los nombres.

* **Agregado (Interfaz)**: Una interfaz común (`Aggregate`) con un método como createIterator().
* **Iterador (Interfaz)**: Una interfaz común (`Iterator`) con métodos como hasNext() (para verificar si quedan elementos) y next() (para obtener el siguiente elemento).
* **Agregados Concretos**: Clases como `HierarchicalEmployeeCollection` y `ListEmployeeCollection` implementan createIterator().
* **Iteradores Concretos**: Clases como `TreeIterator` y `ListIterator` implementan la lógica de recorrido específica para sus respectivas estructuras de datos.

El código cliente simplemente obtiene un iterador (`iterator = collection.createIterator()`) y lo utiliza (`while (iterator.hasNext()) { print(iterator.next()); }`), sin importarle si la estructura interna es una lista, un array o un árbol.

# Cuándo usar
* Cuando necesitas acceder a los contenidos de un objeto agregado sin exponer su estructura interna (la forma en que se almacenan los datos).
* Cuando necesitas soportar múltiples formas de recorrido en el mismo objeto agregado (por ejemplo, recorrido de un árbol en preorden o en postorden).
* Cuando deseas proporcionar una interfaz uniforme para recorrer diferentes estructuras de datos heterogéneas.

## Contestar la siguiente pregunta
* ¿Necesito recorrer los elementos de una colección o estructura de datos compleja de manera secuencial, sin exponer la organización interna de esa colección?
  * Por ejemplo:
    * Recorrido de Datos: Recorrer los nodos de un grafo o árbol utilizando un iterador para aplicar una función a cada nodo.
    * Mostrar Resultados: Iterar sobre los resultados de una base de datos sin que el código de presentación tenga que conocer la implementación interna de la consulta.

## Ejemplos en la vida real
* **Colecciones en Lenguajes de Programación**: Muchas bibliotecas estándar (como las colecciones en Java, C# o Python) implementan el patrón Iterator para permitir a los desarrolladores recorrer listas, conjuntos y mapas sin preocuparse por su estructura interna.
* **Recorrido de Documentos**: En aplicaciones que manejan documentos (como procesadores de texto o navegadores web), el patrón Iterator puede ser utilizado para recorrer elementos como párrafos, imágenes y tablas dentro del documento.
* **Sistemas de Archivos**: Los sistemas de archivos pueden usar iteradores para recorrer directorios y archivos, permitiendo a los usuarios listar el contenido sin exponer la estructura subyacente del sistema de archivos.
""";


List<String> _steps = [
  hypotheticalExample, step1, step2, step3, step4, step5, explanation
];