import 'package:patterns_guide_app/features/desing_patterns/domain/entities/desing_pattern.entity.dart';
import 'steps/steps.index.dart';

DesingPattern adapterPattern = DesingPattern(
  name: "Adapter",
  smallDescription: "Permite que clases con interfaces incompatibles trabajen juntas.",
  description: _descriptionPattern,
  whereToUse: _whenToUse,
  exampleSteps: _steps,
  imageUrl: "assets/patterns/06_Adapter/adapter-mini.png",
);


String _descriptionPattern = """
# Propósito
$_description \n
![](assets/patterns/06_Adapter/adapter-es.png)

## Pros
$_advantages \n
## Contras
$_disadvantages \n
""";

String _description = """
El patrón Adapter (Adaptador) es un patrón estructural que permite que la interfaz de una clase existente funcione como otra interfaz que el cliente espera. 
**Actúa como un traductor o enchufe que convierte una interfaz en otra, permitiendo que clases incompatibles colaboren.**
""";

String _advantages = """
* Reutilización de Código: Permite utilizar clases existentes cuyo código no se puede modificar (o no se debe modificar) en sistemas que esperan una interfaz diferente.
* Desacoplamiento: Desacopla el código cliente de la implementación específica de la clase que está siendo adaptada. El cliente solo interactúa con la interfaz del Adaptador.
* Flexibilidad: Puedes introducir nuevos adaptadores para soportar clases o bibliotecas de terceros sin cambiar el código central.
""";

String _disadvantages = """
* Complejidad: Puede introducir una capa de abstracción adicional y potencialmente innecesaria si la diferencia entre las interfaces es trivial.
* Sobrecarga de Llamadas: La capa adicional del adaptador puede, en teoría, añadir una mínima sobrecarga de rendimiento al redirigir las llamadas.
""";



String _whenToUse = """
# Aplicabilidad
Imagina que estás desarrollando una aplicación de procesamiento de imágenes que solo puede manejar archivos en formato JPG a través de una interfaz ImageProcessor. 
Un nuevo requisito es que la aplicación debe ser capaz de procesar imágenes PNG utilizando una biblioteca de terceros (PNGTool) que tiene un método llamado drawRaster(), mientras que tu interfaz espera un método llamado processImage().
* El Adaptador (PNGAdapter) implementa la interfaz ImageProcessor esperada.
* El Adaptador contiene una instancia del objeto incompatible (PNGTool).
* Cuando el cliente llama a PNGAdapter.processImage(), el adaptador traduce esa llamada a PNGTool.drawRaster().

De esta forma, la aplicación principal puede seguir utilizando la interfaz ImageProcessor para todos los formatos, y la nueva biblioteca PNG encaja perfectamente.

# Cuándo usar
* Cuando quieres usar una clase existente y su interfaz no coincide con la que el resto de la aplicación espera.
* Cuando quieres crear una clase reutilizable que coopere con clases no relacionadas o imprevistas.
* Cuando estás integrando una biblioteca externa o un sistema heredado (legacy code) que tiene una interfaz fija e inmodificable.

## Contestar la siguiente pregunta
* ¿Necesito que dos o más clases colaboren, pero sus interfaces no son compatibles?
  * Por ejemplo:
    * Conexión a Bases de Datos: Adaptar una vieja interfaz de conexión SQLServer a una nueva interfaz DBConnection.
    * Sistemas de Unidades: Adaptar una biblioteca que usa medidas métricas (metros) para que funcione en un sistema que espera medidas imperiales (pies).

## Ejemplos en la vida real
* Adaptadores de Enchufe: Permiten que dispositivos con diferentes tipos de enchufes funcionen en tomas de corriente incompatibles.
* Convertidores de Moneda: Adaptan una interfaz de conversión de moneda a otra.
""";


List<String> _steps = [
  hypotheticalExample, step1, step2, step3, step4, step5, explanation
];