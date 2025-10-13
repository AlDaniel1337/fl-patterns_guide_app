import 'package:patterns_guide_app/features/desing_patterns/domain/entities/desing_pattern.entity.dart';
import '../observer_pattern/steps/steps.index.dart';

DesingPattern strategyPattern = DesingPattern(
  name: "Strategy",
  smallDescription: "Permite definir una familia de algoritmos, encapsular cada uno y hacerlos intercambiables.",
  description: _descriptionPattern,
  whereToUse: _whenToUse,
  exampleSteps: _steps,
  imageUrl: "assets/patterns/13_Strategy/strategy-mini.png",
);


String _descriptionPattern = """
# Propósito
$_description \n
![](assets/patterns/13_Strategy/strategy.png)

## Pros
$_advantages \n
## Contras
$_disadvantages \n
""";

String _description = """
El patrón de diseño **Strategy** (Estrategia) es un patrón de comportamiento que permite **definir una familia de algoritmos**, encapsular cada uno de ellos, y hacerlos **intercambiables**. 
Este patrón permite que el algoritmo varíe independientemente de los clientes que lo usan. En lugar de implementar la lógica directamente, la clase cliente delega la tarea a uno de los objetos de estrategia intercambiables.
""";

String _advantages = """
* **Intercambiabilidad de Algoritmos**: Permite cambiar el algoritmo utilizado en un objeto en tiempo de ejecución de manera sencilla y transparente.
* **Open/Closed Principle (Principio Abierto/Cerrado)**: La clase cliente está abierta a la extensión (puedes añadir nuevas estrategias/algoritmos) pero cerrada a la modificación (no tienes que cambiar el código del cliente).
* **Evita Condicionales Complejos**: Elimina la necesidad de usar grandes estructuras condicionales (if/else o switch) para seleccionar la lógica correcta.
""";

String _disadvantages = """
* **Más Objetos**: Introduce más clases y objetos (uno por cada estrategia), lo que puede aumentar la complejidad si solo hay un par de algoritmos.
* **Sobrecarga de Implementación**: El cliente debe estar al tanto de las diferentes estrategias disponibles para poder elegir la adecuada, o la Contexto debe elegir la estrategia por el cliente.
""";



String _whenToUse = """
# Aplicabilidad
Imagina que estás desarrollando un sistema de **pago** para una tienda en línea. El proceso de pago (`checkout`) es constante, pero el método de pago puede ser `Tarjeta de Crédito`, `PayPal` o `Transferencia Bancaria`.

* **Contexto**: La clase `ShoppingCart` (el cliente) mantiene una referencia a una interfaz de estrategia.
* **Estrategia (Interfaz)**: Una interfaz común (`PaymentStrategy`) con un método como `pay(amount)`.
* **Estrategias Concretas**: Clases como `CreditCardPayment`, `PayPalPayment`, cada una implementando el método `pay(amount)` con su lógica específica.

El cliente solo necesita establecer la estrategia y luego ejecutar la acción:
* `carrito.setPaymentStrategy(new PayPalPayment())`
* `carrito.checkout(150.00)`

La clase `ShoppingCart` delega la llamada a la estrategia actual, sin importarle la implementación específica.

# Cuándo usar
* Cuando una clase tiene que elegir entre múltiples variantes de un algoritmo relacionado, y deseas cambiar esa elección en tiempo de ejecución.
* Cuando deseas aislar la lógica de negocios (los diferentes algoritmos) de la clase que los utiliza, protegiendo el código cliente de los cambios en los algoritmos.
* Cuando tienes muchas declaraciones condicionales en tu código que seleccionan un comportamiento entre varios (por ejemplo, lógica de validación, exportación de archivos).

## Contestar la siguiente pregunta
* ¿Tengo varias formas diferentes (algoritmos) de realizar una misma acción, y necesito que sean intercambiables en tiempo de ejecución?
  * Por ejemplo:
    * **Ordenación de Datos**: Ofrecer diferentes algoritmos de ordenación (QuickSort, MergeSort) que pueden ser seleccionados por el usuario.
    * **Cálculo de Impuestos**: Usar diferentes lógicas de cálculo de impuestos (TaxStrategyUSA, TaxStrategyEU) basadas en la ubicación del cliente.

## Ejemplos en la vida real
* **Sistemas de Pago**: Diferentes métodos de pago (tarjeta de crédito, PayPal, transferencia bancaria) implementados como estrategias intercambiables.
* **Compresión de Archivos**: Diferentes algoritmos de compresión (ZIP, RAR, TAR) que pueden ser seleccionados según las necesidades del usuario.
* **Filtros de Imagen**: Aplicar diferentes filtros (blanco y negro, sepia, negativo) a una imagen utilizando estrategias intercambiables.
""";


List<String> _steps = [
  hypotheticalExample, step1, step2, step3, step4, explanation
];