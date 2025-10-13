import 'package:patterns_guide_app/features/desing_patterns/domain/entities/desing_pattern.entity.dart';
import 'steps/steps.index.dart';

DesingPattern flyweightPattern = DesingPattern(
  name: "Flyweight",
  smallDescription: "Optimiza el uso de memoria al compartir objetos similares.",
  description: _descriptionPattern,
  whereToUse: _whenToUse,
  exampleSteps: _steps,
  imageUrl: "assets/patterns/11_Flyweight/flyweight-mini.png",
);


String _descriptionPattern = """
# Propósito
$_description \n
![](assets/patterns/11_Flyweight/flyweight.png)

## Pros
$_advantages \n
## Contras
$_disadvantages \n
""";

String _description = """
El patrón de diseño **Flyweight** (Peso Ligero) es un patrón estructural que tiene como objetivo **minimizar el uso de memoria** o el costo computacional al compartir la mayor cantidad de datos posible entre varios objetos. 
Lo logra separando y compartiendo el estado intrínseco (datos compartidos e inmutables) y gestionando el estado **extrínseco** (datos únicos y contextuales) fuera del objeto Flyweight.
""";

String _advantages = """
* **Ahorro de Memoria**: Permite crear un inmenso número de objetos utilizando un número muy reducido de objetos flyweight compartidos, logrando un ahorro significativo de RAM.
* **Eficiencia**: Mejora la eficiencia del sistema cuando la creación de objetos idénticos o casi idénticos es costosa o recurrente.
* **Centralización de Datos**: Los datos compartidos (intrínsecos) se almacenan en un único lugar, facilitando su gestión y asegurando su consistencia.
""";

String _disadvantages = """
* **Complejidad de Diseño**: Aumenta la complejidad del código, ya que requiere que la aplicación separe y gestione explícitamente el estado extrínseco.
* **Mayor Esfuerzo de Programación**: Requiere un diseño cuidadoso para identificar y extraer correctamente el estado intrínseco y garantizar que el estado extrínseco se pase correctamente al objeto Flyweight cuando sea necesario.
""";



String _whenToUse = """
# Aplicabilidad
Imagina que estás desarrollando un **editor de texto** avanzado donde cada carácter en la pantalla es un objeto. 
* Si el documento tiene 100,000 caracteres, crear 100,000 objetos completos (con posición, color, fuente, y el valor del carácter) es ineficiente.

**El patrón Flyweight resuelve esto:**
* **Estado Intrínseco (Compartido)**: El valor del carácter (la letra 'A', 'B', 'c', el glifo). Solo necesitas una instancia de Flyweight para cada letra única. Estas instancias se almacenan en una fábrica compartida.
* **Estado Extrínseco (Único)**: La posición (fila, columna), el color o el tamaño de fuente. Estos datos son únicos para cada ubicación y deben pasarse al método del Flyweight desde el código cliente.

Así, si la letra 'E' aparece 5,000 veces, solo se crea un único objeto Flyweight para 'E', y el programa simplemente le pasa las 5,000 coordenadas únicas cuando necesita dibujarlo

# Cuándo usar
* Cuando la aplicación necesita manejar un **gran número de objetos** (cientos o miles).
* Cuando el **costo de memoria** total para almacenar todas esas instancias es inaceptablemente alto.
* Cuando gran parte del estado del objeto puede hacerse **extrínseco** (es decir, puede ser pasado a los métodos del objeto en lugar de almacenarse en el objeto mismo).
* Cuando los grupos de objetos se pueden reemplazar por unos **pocos objetos compartidos**.

## Contestar la siguiente pregunta
* ¿Estoy creando una cantidad masiva de objetos similares, y gran parte de su información puede ser compartida para ahorrar memoria?
  * Por ejemplo:
    * Árboles en un Bosque: Todos los pinos de la misma especie (Flyweight) comparten la misma textura y modelo 3D (estado intrínseco), pero cada uno tiene su propia coordenada GPS y altura (estado extrínseco).
    * Partículas en un Simulador: Todas las partículas de agua comparten la misma densidad y color (intrínseco), pero cada una tiene su propia velocidad y posición (extrínseco).

## Ejemplos en la vida real
* Editor de Texto: Cada carácter es un objeto Flyweight que comparte la misma fuente y estilo, pero tiene una posición única en el documento.
* Juegos: En un juego de estrategia, muchas unidades del mismo tipo (soldados, tanques) pueden compartir la misma textura y modelo 3D, pero tener posiciones y estados únicos.
* Sistemas de Mapas: Los iconos de puntos de interés (restaurantes, gasolineras) pueden compartir la misma imagen, pero tener coordenadas únicas en el mapa.
""";


List<String> _steps = [
  hypotheticalExample, step1, step2, step3, step4, explanation
];