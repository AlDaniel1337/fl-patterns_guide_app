import 'package:patterns_guide_app/features/desing_patterns/domain/entities/desing_pattern.entity.dart';
import 'steps/steps.index.dart';

DesingPattern factoryFunctionPattern = DesingPattern(
  name: "Factory Function",
  smallDescription: "Fabrica de funciones.",
  description: _descriptionPattern,
  whereToUse: _whenToUse,
  aplicability: _aplicability,
  exampleSteps: _steps,
);


String _descriptionPattern = """
# Propósito
$_description \n

## Pros
$_advantages \n
## Contras
$_disadvantages \n
""";

String _description = """
Una Factory Function (Función Fábrica) es simplemente una función que crea y devuelve un objeto sin usar la palabra clave `new` ni clases formales

Su objetivo es **centralizar la lógica de creación** de objetos y **abstraer** el proceso de instanciación del código cliente. 
* A menudo se utiliza como una forma más simple y flexible de implementar el patrón **Factory Method.**
""";

String _advantages = """
* Simplicidad: Es la forma más sencilla de implementar una "fábrica" en muchos lenguajes (especialmente JS). Es solo una función, lo que reduce la complejidad y la sobrecarga de código (boilerplate).
* Flexibilidad y Composición: Permite crear objetos con gran flexibilidad y facilita el uso de composición (en lugar de herencia) mediante el uso de mixins o propiedades de otros objetos.
* Encapsulamiento: Oculta los detalles de cómo se construye el objeto. El código cliente solo sabe que llama a la función y obtiene un objeto listo para usar.
""";

String _disadvantages = """
* Sin Herencia Formal: En lenguajes orientados a clases, las funciones fábrica no se integran con la herencia basada en clases de la misma manera que los patrones tradicionales, lo que puede ser un inconveniente para desarrolladores acostumbrados a ese modelo.
* No Estándar (GoF): Dado que no forma parte de los patrones GoF, su uso podría no ser inmediatamente familiar para todos los desarrolladores.
* Gestión de Instancias: Si la función fábrica necesita asegurar que solo se cree una instancia (como un Singleton), la lógica de gestión de estado debe implementarse manualmente dentro de la función.
""";

String _aplicability = """
# Aplicabilidad
Imagina que estás desarrollando un sistema de gestión de vehículos y necesitas crear diferentes tipos de vehículos (Coche, Bicicleta, Camión). La lógica para configurar cada uno (como establecer el número de ruedas, el motor o el color inicial) es compleja.

* La Factory Function (crearVehiculo(tipo, color)) encapsula esta lógica.
  * El cliente solo necesita decir qué quiere: miCoche = crearVehiculo('coche', 'rojo').
  * La función se encarga de:
    * Verificar el tipo (coche).
    * Crear el objeto base { ruedas: 4, motor: 'combustion' }.
    * Añadir el color.
    * Devolver el objeto configurado.

El cliente no tiene que saber si la creación interna utilizó una clase, un prototipo o simplemente un objeto literal.
""";

String _whenToUse = """
# Cuándo usar
* Cuando necesitas una forma sencilla y directa de crear objetos en función de un parámetro de entrada o una configuración.
* Cuando quieres evitar el uso de new y clases para la creación de objetos, prefiriendo la composición y la simplicidad de las funciones (común en JavaScript).
* Cuando quieres devolver diferentes tipos de objetos que implementan la misma interfaz (o comportamiento) sin exponer la lógica de creación.

## Contestar la siguiente pregunta
* ¿Necesito una forma simple y flexible de crear diferentes tipos de objetos (productos) basándose en una entrada, ocultando por completo la lógica de instanciación?
  * **Por ejemplo:**
    * Crear Conexiones: Necesito una función que devuelva un objeto de conexión (MySQL, PostgreSQL, MongoDB) basándose en una cadena de configuración, sin que el cliente sepa la clase exacta utilizada.
    * Crear Figuras: Una función que recibe el nombre de una figura ('círculo', 'cuadrado') y devuelve el objeto correspondiente con las propiedades básicas ya inicializadas.


## Ejemplos en la vida real
* Creación de elementos UI en frameworks como React, donde las funciones componentes actúan como fábricas de elementos.
* En JavaScript, la creación de objetos mediante funciones que devuelven configuraciones específicas (por ejemplo, crearUsuario(tipo, nombre)).
""";


List<String> _steps = [
  hypotheticalExample, step1, step2, step3, step4, explanation
];