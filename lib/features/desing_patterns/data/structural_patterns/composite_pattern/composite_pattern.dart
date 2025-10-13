import 'package:patterns_guide_app/features/desing_patterns/domain/entities/desing_pattern.entity.dart';
import 'steps/steps.index.dart';

DesingPattern compositePattern = DesingPattern(
  name: "Composite",
  smallDescription: "Permite tratar objetos individuales y compuestos de manera uniforme.",
  description: _descriptionPattern,
  whereToUse: _whenToUse,
  exampleSteps: _steps,
  imageUrl: "assets/patterns/08_Composite/composite-mini.png",
);


String _descriptionPattern = """
# Propósito
$_description \n
![](assets/patterns/08_Composite/composite.png)

## Pros
$_advantages \n
## Contras
$_disadvantages \n
""";

String _description = """
El patrón de diseño **Composite** (Composición) es un patrón estructural que permite **tratar a objetos individuales y a composiciones de objetos de manera uniforme** (es decir, de la misma manera). 
Se utiliza para representar jerarquías de objetos de tipo "parte-todo" o estructuras de árbol, de modo que el código cliente pueda interactuar con un objeto simple (una hoja) o un grupo de objetos (un compuesto) sin tener que distinguir entre ellos.
""";

String _advantages = """
* Uniformidad de Interfaz: Simplifica el código cliente, ya que este solo necesita interactuar con una única interfaz. No tiene que preocuparce por si está manejando un objeto simple o un grupo complejo.
* Extensibilidad: Facilita la adición de nuevos tipos de componentes (hojas o compuestos) sin cambiar el código existente del cliente.
* Representación Jerárquica: Proporciona una estructura clara y bien definida para manejar jerarquías de forma recursiva.
""";

String _disadvantages = """
* Generalización Excesiva: Si se aplica Composite para la máxima transparencia, puede ser difícil restringir qué "hojas" (objetos simples) pueden o no tener "hijos" (componentes).
* Diseño Genérico: El precio de la uniformidad es que a veces la interfaz común podría ser demasiado genérica, obligando a los componentes a implementar métodos que no tienen sentido para ellos (aunque esto se puede mitigar con diseños cuidadosos).
""";



String _whenToUse = """
# Aplicabilidad
Imagina que estás diseñando un sistema de archivos o carpetas. Una carpeta puede contener archivos individuales (hojas) y también otras carpetas (compuestos). El cliente quiere realizar una acción, como calcular el tamaño, en cualquier elemento.

* El Componente (Interfaz): Una interfaz común (`FileSystemComponent`) con un método como `getSize()`.
* La Hoja (Objeto Simple): La clase `File` implementa `getSize()` devolviendo su tamaño en bytes.
* El Compuesto (Grupo de Objetos): La clase `Folder` implementa `getSize()` recorriendo recursivamente a todos sus hijos (archivos y otras carpetas) y sumando sus tamaños.

El código cliente simplemente llama a `algunComponente.getSize()`, sin importar si `algunComponente` es un archivo individual o la carpeta raíz con miles de elementos dentro.

# Cuándo usar
* Cuando necesitas representar estructuras de objetos de tipo jerárquicas o de árbol.
* Cuando quieres que el código cliente pueda ignorar la diferencia entre objetos individuales y composiciones de objetos.
* Cuando las estructuras se vuelven recursivas (un elemento puede contener muchos otros, que a su vez pueden contener más).

## Contestar la siguiente pregunta
* ¿Necesito organizar objetos en una estructura de árbol o jerárquica y tratar tanto a los objetos simples (hojas) como a los grupos de objetos (compuestos) de la misma manera?
  * Por ejemplo:
    * Gráficos: Agrupar formas individuales (círculos, cuadrados) en grupos más grandes para manipularlos como una sola unidad.
    * Organigramas: Representar empleados individuales (hojas) y departamentos (compuestos) que contienen a otros empleados y subdepartamentos.

## Ejemplos en la vida real
* Sistemas de archivos: Archivos y carpetas.
* Documentos: Elementos individuales (párrafos, imágenes) y contenedores (secciones, capítulos).
* Interfaces gráficas de usuario: Componentes individuales (botones, cuadros de texto) y contenedores (paneles, ventanas).
""";


List<String> _steps = [
  hypotheticalExample, step1, step2, step3, step4, explanation
];