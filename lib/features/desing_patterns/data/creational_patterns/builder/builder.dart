import 'package:patterns_guide_app/features/desing_patterns/domain/entities/desing_pattern.entity.dart';
import './steps/steps.index.dart';

DesingPattern builderPattern = DesingPattern(
  name: "Builder",
  smallDescription: "Construir objetos complejos paso a paso.",
  description: _descriptionPattern,
  whereToUse: _whenToUse,
  aplicability: _aplicability,
  exampleSteps: _steps,
  imageUrl: "assets/patterns/01_Builder/builder-mini.png",
);


String _descriptionPattern = """
# Propósito
$_description \n
![](assets/patterns/01_Builder/builder-es.png)

## Pros
$_advantages \n
## Contras
$_disadvantages \n
""";

String _description = """
El patrón de diseño **Builder** es un patrón creacional que **se utiliza para construir objetos complejos paso a paso**.
Este patrón es **especialmente útil** cuando la construcción de un objeto requiere múltiples pasos o configuraciones, y cuando el proceso de construcción puede variar según las necesidades del cliente.
""";

String _advantages = """
- Permite la creación de objetos complejos de manera controlada.
- Facilita la reutilización de código y la separación de responsabilidades.
- Mejora la legibilidad y el mantenimiento del código.
""";

String _disadvantages = """
- Puede **aumentar** la complejidad del código si se utiliza en exceso.
- Requiere más clases y código para implementar en comparación con la creación de objetos simples.
- No es adecuado para objetos que son simples y no requieren una construcción compleja.
""";

String _aplicability = """
# Aplicabilidad
Digamos que tenemos un **constructor con diez parámetros opcionales**. Invocar a semejante bestia es poco práctico, por lo que *sobrecargamos el constructor y creamos varias versiones más cortas con menos parámetros*. 

Esto quiere decir que el patrón Builder permite construir objetos utilizando tan solo aquellos pasos que realmente necesitamos. 

* Estos constructores siguen recurriendo al principal, pasando algunos valores por defecto a cualquier parámetro omitido.
* Una vez implementado el patrón, ya no hará falta apiñar decenas de parámetros dentro de los constructores.
""";


String _whenToUse = """
# Cuándo usar
* Con objetos con muchas combinaciones.
* Cuando se tiene una clase compleja con múltiples constructores.
* Cuando se quiera generar objetos con diferentes representaciones.

## Contestar la siguiente pregunta
* ¿Voy a crear un objeto complejo que requiera **múltiples pasos o configuraciones**?
  * Pizza
    * Paso 1: Seleccionar el tipo de masa.
    * Paso 2: Agregar ingredientes.
    * Paso 3: Hornear la pizza.

## Ejemplos en la vida real
* Constructor de consultas SQL.
* Generador de documentos (PDF, Word).
* Configurador de interfaces de usuario.
* Constructor de objetos gráficos (gráficos, diagramas).
* Generador de configuraciones de red.
""";


List<String> _steps = [
  hypotheticalExample, step1, step2, step3, explanation
];

