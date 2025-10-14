import 'package:patterns_guide_app/features/desing_patterns/domain/entities/desing_pattern.entity.dart';
import 'steps/steps.index.dart';

DesingPattern templateMethodPattern = DesingPattern(
  name: "Template Method",
  smallDescription: "Define el esqueleto de un algoritmo en una operación, delegando algunos pasos a las subclases.",
  description: _descriptionPattern,
  whereToUse: _whenToUse,
  aplicability: _aplicability,
  exampleSteps: _steps,
  imageUrl: "assets/patterns/17_TemplateMethod/template-method-mini.png",
);


String _descriptionPattern = """
# Propósito
$_description \n
![](assets/patterns/17_TemplateMethod/template-method.png)

## Pros
$_advantages \n
## Contras
$_disadvantages \n
""";

String _description = """
El patrón de diseño Template Method (Método Plantilla) es un patrón de comportamiento que define el **esqueleto de un algoritmo** en un método (la "plantilla"), dejando que las **subclases proporcionen la implementación** de ciertos pasos del algoritmo. 
Permite que las subclases redefinan ciertos pasos de un algoritmo sin cambiar su estructura general.
""";

String _advantages = """
* **Reutilización de Código**: La estructura fija del algoritmo se mantiene en la clase base, evitando la duplicación de código en las subclases.
* **Inversión de Control (Hollywood Principle)**: La clase base llama a los métodos de las subclases (los métodos abstractos o hook methods). La clase base decide cuándo llamar a sus métodos, no al revés ("No nos llames, te llamaremos nosotros").
* **Estructura Fija**: Garantiza que el algoritmo se ejecute en el orden correcto y que los pasos obligatorios no se omitan.
""";

String _disadvantages = """
* **Restricción por Herencia**: La lógica del algoritmo está ligada a la herencia, lo que puede limitar la flexibilidad si ya se está utilizando la herencia para otro propósito (un problema común de la herencia).
* **Mayor Acoplamiento**: Si el método plantilla define demasiados pasos que deben ser implementados o anulados por las subclases, puede crear un acoplamiento excesivo y dificultar los cambios en la clase base.
* **Violación de Liskov**: Si los pasos son opcionales (hook methods), la subclase podría dejar la implementación vacía, lo cual podría confundir a algunos desarrolladores.
""";

String _aplicability = """
# Aplicabilidad
Imagina que estás construyendo un sistema para procesar datos, como un archivo (`DataProcessor`). El proceso general es siempre el mismo: **Leer Datos**, **Procesar Datos**, **Escribir Resultados**. Sin embargo, la forma de leer, procesar y escribir varía si se trata de un archivo CSV o un XML.

* Clase Abstracta (Plantilla): `DataProcessor` define el `templateMethod()` que es final (no se puede sobrescribir) y contiene la estructura:
```
templateMethod():
    readData()
    processData()
    writeData()
```
* Métodos Abstractos/Gancho (Hooks): Los métodos `readData()`, `processData()` y `writeData()` se declaran como abstractos o protegidos en la clase base.
* Clases Concretas: `CSVProcessor` y `XMLProcessor` heredan de `DataProcessor` y solo implementan la lógica específica para cada paso. Por ejemplo, `CSVProcessor.readData()` lee líneas separadas por comas.

De esta forma, cualquier nuevo formato de archivo solo necesita heredar y llenar los "huecos" del algoritmo.
""";

String _whenToUse = """
# Cuándo usar
* Cuando quieres implementar las partes invariables de un algoritmo una sola vez y dejar que las subclases implementen el comportamiento que puede variar.
* Cuando tienes varias clases que implementan un comportamiento común con ligeras variaciones, y quieres aislar esas variaciones.
* Cuando quieres controlar el orden en el que se ejecutan las operaciones, permitiendo que las subclases implementen solo ciertos pasos.

## Contestar la siguiente pregunta
* ¿Tengo un algoritmo con una estructura fija (un esqueleto), pero con pasos individuales que deben ser implementados de forma diferente por mis subclases?
  * Por ejemplo:
    * Construcción de Edificios: La secuencia es siempre `cimientos`, `paredes`, `techo` (esqueleto fijo), pero la implementación de `ponerParedes()` es diferente para una `CasaMadera` vs. una `CasaLadrillo`.
    * Ciclos de Vida de Juegos: La secuencia `inicializar`, `actualizar`, `dibujar` es fija, pero la lógica de `dibujar` es específica para un `Nivel3D` o un `Nivel2D`.

## Ejemplos en la vida real
* **Cocina**: Una receta puede tener pasos fijos como `prepararIngredientes()`, `cocinar()`, `servir()`, pero la forma de preparar y cocinar varía según el plato.
* **Procesamiento de Documentos**: Un flujo de trabajo para procesar documentos puede incluir pasos como `abrirDocumento()`, `analizarContenido()`, `guardarCambios()`, pero la implementación de cada paso puede variar según el tipo de documento (PDF, Word, etc.).
* **Juegos**: En un motor de juegos, el ciclo de vida del juego puede seguir una secuencia fija de `inicializar()`, `actualizar()`, `renderizar()`, pero la lógica específica de cada paso puede variar según el tipo de juego (2D, 3D, RPG, etc.).
""";


List<String> _steps = [
  hypotheticalExample, step1, step2, step3, explanation
];