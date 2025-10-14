import 'package:patterns_guide_app/features/desing_patterns/domain/entities/desing_pattern.entity.dart';
import './steps/steps.index.dart';

DesingPattern factoryMethodPattern = DesingPattern(
  name: "Factory Method",
  smallDescription: "Delegar creación a subclases.",
  description: _descriptionPattern,
  whereToUse: _whenToUse,
  aplicability: _aplicability,
  exampleSteps: _steps,
  imageUrl: "assets/patterns/02_FactoryMethod/factory-method-mini.png",
);


String _descriptionPattern = """
# Propósito
$_description \n
![](assets/patterns/02_FactoryMethod/factory-method-es.png)

## Pros
$_advantages \n
## Contras
$_disadvantages \n
""";

String _description = """
El patrón **Factory Method** define un método en una clase base (la "fábrica") que delega la instanciación de objetos a sus subclases. Permite que una clase delegue a sus subclases la decisión sobre qué clase instanciar.

Este patrón es ideal cuando:
- Una clase no sabe qué subclases de un objeto requerirá instanciar.
- Una clase quiere que sus subclases especifiquen los objetos a crear.
- Se necesita evitar acoplar el código de la aplicación con clases de producto concretas.
""";

String _advantages = """
- Aísla la creación de objetos del código que los utiliza (Principio de Abierto/Cerrado), lo que facilita la introducción de nuevos tipos de productos sin modificar el código existente.
- Reduce el acoplamiento entre el código de la aplicación y las clases de producto concretas.
- Centraliza la lógica de creación de objetos, haciendo el código más organizado y fácil de mantener.
""";

String _disadvantages = """
- Aumenta la complejidad si solo se tienen unos pocos tipos de productos, ya que introduce clases nuevas (la interfaz/clase abstracta de fábrica y las fábricas concretas).
- Puede requerir muchas clases paralelas (una clase de fábrica concreta por cada clase de producto concreta), lo que puede complicar la estructura del proyecto.
""";

String _aplicability = """
# Aplicabilidad
Imagina que estás construyendo un juego o una aplicación que gestiona diferentes tipos de transportes (coches, camiones, bicicletas, etc.). **El código que utiliza los transportes no debería saber o preocuparse por cómo se crean; solo debería saber que pueden moverse.**

El patrón Factory Method permite:
* Definir un contrato (Creator) con un método para crear un objeto (Product).
* Implementar este contrato en subclases (Concrete Creators), donde cada una se encargará de instanciar un tipo específico de objeto (Concrete Product).

Esto significa que si mañana decides añadir un nuevo tipo de transporte (ej. una "Patineta"), solo necesitas crear la clase `Patineta` y una `PatinetaFactory`, dejando el código que usa los transportes completamente intacto.
""";

String _whenToUse = """
# Cuándo usar
* Cuando quieres evitar el acoplamiento entre el creador y los productos concretos.
* Cuando la clase que crea los objetos no puede anticipar qué clase de objetos necesita crear (por ejemplo, depende de la configuración o el entorno de ejecución).
* Cuando quieres que tus subclases puedan especificar qué objetos crear.

## Contestar la siguiente pregunta
* ¿Necesito una forma flexible para crear distintos objetos relacionados de una jerarquía común sin especificar explícitamente sus clases?
  * Como por ejemplo, gestionar la creación de un sistema de notificaciones:
    * Notificaciones por Email
    * Notificaciones por SMS
    * Notificaciones Push

## Ejemplos en la vida real
* En Flutter, el método `createState()` en un `StatefulWidget` es un ejemplo de Factory Method. Cada vez que se crea un `StatefulWidget`, Flutter llama a este método para crear el estado asociado.
* En el framework de pruebas unitarias JUnit, el método `suite()` en la clase `TestCase` es un Factory Method que permite a las subclases definir cómo se agrupan los casos de prueba.
""";


List<String> _steps = [
  hypotheticalExample, step1, step2, step3, step4, step5, explanation
];