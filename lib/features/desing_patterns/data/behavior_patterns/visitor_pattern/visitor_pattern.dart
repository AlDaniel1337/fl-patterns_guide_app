import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/desing_patterns/domain/entities/desing_pattern.entity.dart';
import 'steps/steps.index.dart';

DesingPattern visitorPattern = DesingPattern(
  name: "Visitor",
  smallDescription: "Permite agregar nuevas operaciones a objetos sin modificar su estructura.",
  description: _descriptionPattern,
  whereToUse: _whenToUse,
  exampleSteps: _steps,
  icon: Icons.build,
);


String _descriptionPattern = """
# Propósito
$_description \n
![](assets/patterns/22_Visitor/visitor.png)

## Pros
$_advantages \n
## Contras
$_disadvantages \n
""";

String _description = """
El patrón de diseño Visitor (Visitante) es un patrón de comportamiento que **permite separar un algoritmo (la operación) de la estructura de objetos** sobre la que opera.
Se utiliza para añadir nuevas operaciones a una estructura de objetos sin modificar las clases de la estructura. La nueva operación, o Visitante, se implementa en una clase separada y se "pasa" a los elementos de la estructura para que la ejecuten
""";

String _advantages = """
* **Open/Closed Principle**: Es fácil añadir nuevas operaciones (nuevos Visitantes) a una estructura de objetos existente sin necesidad de modificar las clases de los elementos (los visitables).
* **Centralización**: Agrupa operaciones relacionadas en una única clase Visitante, mejorando la organización del código y evitando tener que esparcir la lógica de una operación a través de muchas clases.
* **Separación Clara**: Separa la estructura (cómo se organizan los datos) del comportamiento (qué se hace con esos datos).
""";

String _disadvantages = """
* **Dificultad para Añadir Nuevas Clases**: Si necesitas añadir una nueva clase concreta a la estructura de objetos (visitable), debes actualizar la interfaz `Visitor` y cada Visitante concreto para incluir un nuevo método `visit()` para esa nueva clase.
* **Rompe el Encapsulamiento**: Para que el Visitante pueda realizar su trabajo, a menudo necesita acceder a los datos internos de los elementos de la estructura, lo que puede requerir exponer propiedades y métodos que de otro modo serían privados o protegidos.
""";



String _whenToUse = """
# Aplicabilidad
Imagina que tienes una aplicación de diseño geométrico con una jerarquía de formas (`Circle`, `Square`, ` `Triangle`). Inicialmente, solo necesitas un método para dibujarlas. Luego, decides que necesitas nuevas operaciones como **exportar a XML y calcular el perímetro**.

* **Elemento (Visitable - Interfaz)**: La interfaz base `Shape` define el método accept(visitor) que acepta un Visitante.
* **Visitante (Interfaz)**: La interfaz `ShapeVisitor` declara un método `visit()` para cada clase de elemento concreto (visitCircle(c), visitSquare(s)).
* **Elementos Concretos (Visitables)**: Las clases `Circle`, `Square`, y `Triangle` implementan accept(visitor) llamando a visitor.visit(this). Esto se conoce como doble dispatch.
* **Visitantes Concretos**: Clases como `XMLExportVisitor` y `PerimeterCalculationVisitor`.
Cuando el cliente llama a circle.accept(xmlExporter), la llamada se delega al método `xmlExporter.visitCircle(circle)`, que contiene toda la lógica de exportación específica para un círculo.

De esta forma, puedes añadir la funcionalidad de "exportar a JSON" creando simplemente una nueva clase `JSONExportVisitor`, sin tocar las clases `Circle` o `Square`.

# Cuándo usar
* Cuando necesitas **añadir nuevas operaciones** a una estructura de objetos compleja **sin modificar las clases de esos objetos**.
* Cuando una operación necesita acceder a **datos internos** de varios tipos de objetos en la estructura y es conveniente tener toda esa lógica **centralizada en un solo lugar**.
* Cuando tienes una **estructura de clases estable** (raramente se añaden nuevos elementos), pero la **funcionalidad operativa cambia con frecuencia** (a menudo se añaden nuevas operaciones).

## Contestar la siguiente pregunta
* ¿Tengo una estructura de clases compleja y estable, y necesito añadir nuevas funcionalidades que operen sobre esas clases sin modificar su código fuente?
  * Por ejemplo:
    * **Compiladores**: Un Visitante puede usarse para realizar la comprobación de tipos o la generación de código en los nodos de un Árbol de Sintaxis Abstracta (AST).
    * **Inventarios**: Un Visitante calcula el valor total de inventario (una operación) recorriendo una estructura jerárquica de productos, cajas y almacenes.

## Ejemplos en la vida real
* **Sistemas de archivos**: Un Visitante puede recorrer una estructura de directorios y archivos para calcular el tamaño total, buscar archivos específicos o generar un listado.
* **Procesamiento de documentos**: Un Visitante puede recorrer los elementos de un documento (párrafos, imágenes, tablas) para aplicar formato, contar palabras o exportar a diferentes formatos.
* **Juegos**: Un Visitante puede recorrer una escena de juego para actualizar estados, renderizar gráficos o manejar colisiones.
""";


List<String> _steps = [
  hypotheticalExample, step1, step2, step3, step4, step5, explanation
];