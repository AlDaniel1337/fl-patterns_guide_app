import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/desing_patterns/domain/entities/desing_pattern.entity.dart';
import 'steps/steps.index.dart';

DesingPattern decoratorPattern = DesingPattern(
  name: "Decorator",
  smallDescription: "Permite añadir comportamientos a objetos de forma dinámica.",
  description: _descriptionPattern,
  whereToUse: _whenToUse,
  exampleSteps: _steps,
  icon: Icons.build,
);


String _descriptionPattern = """
# Propósito
$_description \n
![](assets/patterns/09_Decorator/decorator-1.5x.png)

## Pros
$_advantages \n
## Contras
$_disadvantages \n
""";

String _description = """
El patrón de diseño Decorator (Decorador) es un patrón estructural que permite adjuntar dinámicamente nuevas responsabilidades a un objeto. 
Proporciona una alternativa flexible a la herencia para extender la funcionalidad. 
* En esencia, envuelve o decora un objeto existente para añadirle nuevos comportamientos sin modificar su estructura fundamental.
""";

String _advantages = """
* Extensión Flexible: Permite añadir o eliminar responsabilidades a los objetos en tiempo de ejecución, en lugar de tenerlas fijadas en tiempo de compilación mediante herencia.
* Alternativa a la Herencia: Evita la creación de un gran número de subclases para soportar todas las combinaciones posibles de comportamientos (la llamada "explosión de subclases").
* Open/Closed Principle (Principio Abierto/Cerrado): La clase principal puede estar cerrada a la modificación, pero abierta a la extensión mediante nuevos decoradores.
""";

String _disadvantages = """
* Composición de Objetos: Puede resultar en un gran número de objetos pequeños y similares (los decoradores), lo que puede complicar la comprensión del sistema si hay demasiados niveles de decoración.
* Identidad de Objeto: Es difícil asegurar que un objeto envuelto es idénticamente igual al objeto original si se utiliza el operador de igualdad o de identidad.
""";



String _whenToUse = """
# Aplicabilidad
Imagina que estás desarrollando un sistema para una cafetería donde necesitas calcular el costo de diferentes tipos de café y sus adiciones (leche, azúcar, espuma, etc.).

* Componente (Interfaz): Una interfaz base (Coffee) con un método cost().
* Componente Concreto: Una clase base, por ejemplo, SimpleCoffee, que implementa cost() (ej: \$5).
* Decorador Abstracto: Una clase base que mantiene una referencia al objeto Coffee que está envolviendo.
* Decoradores Concretos: Clases como `MilkDecorator` o `SugarDecorator`.
* `MilkDecorator` implementa cost() devolviendo coffee.cost() + 1 (el costo de la leche).

El cliente puede componer el café que desee:
* `miCafe = new SimpleCoffee()`
* `miCafeConLeche = new MilkDecorator(miCafe)` // Costo: \$5 + \$1 = \$6
* `miCafeCompleto = new SugarDecorator(miCafeConLeche)` // Costo: \$6 + \$0.50 = \$6.50

# Cuándo usar
* Cuando necesitas añadir responsabilidades o comportamientos a objetos individuales de forma transparente y dinámica sin afectar a otros objetos de la misma clase.
* Cuando la extensión mediante herencia no es viable porque llevaría a una explosión de subclases para cubrir todas las combinaciones de características.
* Cuando deseas agregar responsabilidades que se pueden quitar (algo que no puedes hacer con la herencia).

## Contestar la siguiente pregunta
* ¿Necesito añadir nuevas funcionalidades a un objeto en tiempo de ejecución de una forma flexible y apilable, sin alterar su clase original?
  * Por ejemplo:
    * Entrada/Salida de Datos: Envolver un flujo de datos (`FileStream`) con decoradores de compresión (`CompressionDecorator`) y cifrado (`EncryptionDecorator`).
    * Elementos de Videojuegos: Añadir habilidades o power-ups a un personaje (un `Player`) envolviéndolo con objetos como `ArmorDecorator` o `FlightDecorator`.

## Ejemplos en la vida real
* Sistemas de Entrada/Salida: Flujos de datos que pueden ser decorados con funcionalidades como compresión, cifrado o buffering.
* Interfaces Gráficas de Usuario: Componentes visuales que pueden ser decorados con bordes, barras de desplazamiento o efectos visuales.
* Sistemas de Notificación: Servicios de notificación que pueden ser decorados para enviar mensajes a
""";


List<String> _steps = [
  hypotheticalExample, step1, step2, step3, step4, step5, explanation
];