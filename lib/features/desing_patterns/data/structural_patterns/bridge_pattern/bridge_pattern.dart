import 'package:patterns_guide_app/features/desing_patterns/domain/entities/desing_pattern.entity.dart';
import 'steps/steps.index.dart';

DesingPattern bridgePattern = DesingPattern(
  name: "Bridge",
  smallDescription: "Desacopla una interfaz de su implementación.",
  description: _descriptionPattern,
  whereToUse: _whenToUse,
  aplicability: _aplicability,
  exampleSteps: _steps,
  imageUrl: "assets/patterns/07_Bridge/bridge-mini.png",
);


String _descriptionPattern = """
# Propósito
$_description \n
![](assets/patterns/07_Bridge/bridge.png)

## Pros
$_advantages \n
## Contras
$_disadvantages \n
""";

String _description = """
El patrón de diseño Bridge (Puente) es un patrón estructural que desacopla una abstracción de su implementación, permitiendo que ambas evolucionen de forma independiente.
Se le llama "Puente" porque conecta la clase de Abstracción (la parte de control de alto nivel) con la clase de Implementación (la parte de trabajo de bajo nivel) a través de un objeto de interfaz.
""";

String _advantages = """
* Modularidad y Extensibilidad: Desacopla la interfaz (Abstracción) de su lógica interna (Implementación), lo que permite extenderlas de forma independiente sin afectar a la otra.
* Oculta Detalles de Implementación: El código cliente solo interactúa con la Abstracción y no necesita saber los detalles de cómo se realiza el trabajo en la Implementación.
* Evita la "Explosión de Clases": Previene la creación de una jerarquía de clases grande y compleja cuando se tienen múltiples combinaciones de características (por ejemplo, si mezclas formas geométricas con colores: CírculoRojo, CírculoAzul, CuadradoRojo, CuadradoAzul).
""";

String _disadvantages = """
* Complejidad Inicial: Introduce más interfaces y clases que una solución directa, lo que puede aumentar la complejidad inicial del diseño.
* Adecuación: Solo es útil en situaciones donde realmente necesitas separar una abstracción de sus posibles implementaciones; no es adecuado para clases simples. 
""";

String _aplicability = """
# Aplicabilidad
Imagina que estás diseñando un sistema de control remoto para varios dispositivos electrónicos (TV, Radio). Tienes dos dimensiones que varían:

* Abstracción (Control): La interfaz de usuario que contiene los métodos de alto nivel (ej: encender(), cambiarCanal(int)). Puedes tener diferentes tipos de controles (ej: ControlSimple, ControlAvanzado).
* Implementación (Dispositivo): La interfaz real que hace el trabajo (ej: encenderDispositivo(), sintonizar(int)). Tienes diferentes dispositivos que implementan esto (ej: TVSamsung, RadioSony).
* El patrón Bridge te permite tener el Control Simple funcionando con una TV Samsung o una Radio Sony, o el Control Avanzado funcionando con los mismos dispositivos.
* La Abstracción (el control) contiene una referencia a la Implementación (el dispositivo), actuando como el "puente".

Esto evita crear clases como ControlSimpleTV y ControlSimpleRadio, y en su lugar, el ControlSimple solo delega sus llamadas al objeto de dispositivo subyacente.
""";

String _whenToUse = """# Cuándo usar
* Cuando quieres evitar el acoplamiento permanente entre una abstracción y su implementación, y quieres que ambas puedan ser seleccionadas o cambiadas en tiempo de ejecución.
* Cuando ambas jerarquías (Abstracción e Implementación) deben poder extenderse de forma independiente.
* Para gestionar combinaciones complejas de clases, previniendo una explosión exponencial de clases.

## Contestar la siguiente pregunta
* ¿Tengo dos dimensiones de variación que debo combinar (una de control/interfaz y otra de funcionalidad/plataforma), y quiero que se desarrollen de forma independiente?
  * Por ejemplo:
    * Dibujo de Figuras: Separar la Geometría (Círculo, Cuadrado) de la API de Dibujo (API_OpenGL, API_DirectX).
    * Sistemas Operativos y Archivos: Separar la Abstracción de Ficheros (Archivo, Carpeta) de la Implementación del SO (ImplementaciónLinux, ImplementaciónWindows).
    
## Ejemplos en la vida real
* Controles Remotos: Un control remoto universal que puede operar diferentes dispositivos (TV, Radio) sin estar acoplado a uno específico.
* Sistemas de Dibujo: Una biblioteca gráfica que separa las formas geométricas de las APIs de renderizado subyacentes.
""";


List<String> _steps = [
  hypotheticalExample, step1, step2, step3, step4, step5, explanation
];