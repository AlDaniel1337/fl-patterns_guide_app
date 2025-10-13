import 'package:patterns_guide_app/features/desing_patterns/domain/entities/desing_pattern.entity.dart';
import 'steps/steps.index.dart';

DesingPattern abstractFactoryPattern = DesingPattern(
  name: "Abstract Factory",
  smallDescription: "Crear familias de objetos relacionados.",
  description: _descriptionPattern,
  whereToUse: _whenToUse,
  exampleSteps: _steps,
  imageUrl: "assets/patterns/03_AbstractFactory/abstract-factory-mini.png",
);


String _descriptionPattern = """
# Propósito
$_description \n
![](assets/patterns/03_AbstractFactory/abstract-factory-es.png)

## Pros
$_advantages \n
## Contras
$_disadvantages \n
""";

String _description = """
El patrón **Abstract Factory** tiene como objetivo **proporcionar una interfaz para crear conjuntos completos de objetos que deben funcionar juntos**. Permite que el código cliente trabaje con interfaces de fábrica y producto sin preocuparse por las implementaciones específicas que se están utilizando (por ejemplo, si se está creando una familia de objetos para Windows o para macOS).
""";

String _advantages = """
* Garantiza la compatibilidad entre los productos creados: todos los objetos de una familia concreta están diseñados para trabajar juntos.
* Aísla las clases concretas del código cliente, facilitando el cambio de familias de productos sin modificar el código que los utiliza (Principio de Abierto/Cerrado).
* Centraliza la gestión de la creación de las familias de objetos.
""";

String _disadvantages = """
* Introduce una complejidad considerable y puede ser una exageración para proyectos pequeños.
* La adición de nuevos tipos de productos (una nueva interfaz de producto) requiere modificar tanto la interfaz de la fábrica abstracta como todas sus implementaciones concretas, lo que puede ser engorroso.
""";



String _whenToUse = """
# Aplicabilidad
Imagina que estás desarrollando una aplicación con una interfaz de usuario (UI) que debe poder funcionar en diferentes sistemas operativos o estilos (como temas Claros y Oscuros). Necesitas crear un conjunto de widgets (Botones, Cajas de Texto, Ventanas) que sean coherentes dentro del mismo estilo.
El patrón Abstract Factory permite:

* Definir una interfaz para la creación de la familia (ej. GUIFactory).
* Implementar esta interfaz en fábricas concretas para cada estilo (ej. LightThemeFactory y DarkThemeFactory).
* Cada fábrica concreta se encarga de crear todos los productos necesarios para su estilo (ej. LightThemeFactory crea LightButton, LightTextBox, etc.).

Esto significa que, para cambiar toda la UI de Claro a Oscuro, solo necesitas cambiar la instancia de la fábrica que le pasas al código que construye la UI.

# Cuándo usar
* Cuando el sistema debe ser independiente de cómo se crean, componen y representan sus productos.
* Cuando el sistema debe poder configurarse con una de varias familias de objetos relacionados.
* Cuando se quiere imponer el uso de una familia de productos que deben ser utilizados juntos.

## Contestar la siguiente pregunta
* ¿Necesito crear familias de productos relacionados o dependientes y asegurar que se usen juntos, permitiendo que mi sistema sea independiente de la composición real de esas familias?
  * Como por ejemplo, crear un sistema de pedidos para una cadena de comida rápida que ofrece diferentes "combos" según la región:
    * Combo Americano: Hamburguesa, Papas Fritas, Refresco.
    * Combo Asiático: Sushi, Té Verde, Mochi.
    * Combo Vegetariano: Ensalada, Jugo Natural, Fruta.
    * Cada combo es una familia de productos relacionados que deben ser pedidos juntos.

## Ejemplos en la vida real
* Sistemas de UI que deben soportar múltiples temas o estilos.
* Sistemas de gestión de bases de datos que deben trabajar con diferentes motores de bases de datos.
""";


List<String> _steps = [
  hypotheticalExample, step1, step2, step3, step4, step5, explanation
];