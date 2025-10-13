import 'package:patterns_guide_app/features/desing_patterns/domain/entities/desing_pattern.entity.dart';
import 'steps/steps.index.dart';

DesingPattern proxyPattern = DesingPattern(
  name: "Proxy",
  smallDescription: "Proporciona un sustituto o marcador de otro objeto para controlar el acceso a este.",
  description: _descriptionPattern,
  whereToUse: _whenToUse,
  exampleSteps: _steps,
  imageUrl: "assets/patterns/12_Proxy/proxy-mini.png",
);


String _descriptionPattern = """
# Propósito
$_description \n
![](assets/patterns/12_Proxy/proxy.png)

## Pros
$_advantages \n
## Contras
$_disadvantages \n
""";

String _description = """El patrón de diseño **Proxy** (Apoderado) es un patrón estructural que proporciona un **sustituto o marcador de posición** para otro objeto. 
Un Proxy controla el acceso al objeto original (el Sujeto Real) o le añade responsabilidades adicionales sin que el cliente note que está interactuando con un sustituto en lugar del objeto real.
""";

String _advantages = """
* **Control de Acceso**: El Proxy puede implementar lógica para controlar cuándo y cómo se accede al Sujeto Real.
* **Añadir Funcionalidad**: Permite añadir funcionalidad adicional (como caché, registro de accesos o seguridad) antes o después de delegar la solicitud al objeto original, siguiendo el Principio Abierto/Cerrado.
* **Gestión de Recursos**: Puede utilizarse para inicializar el objeto original solo cuando es necesario (Proxy Virtual), ahorrando recursos de memoria o tiempo de procesamiento.
""";

String _disadvantages = """
* **Latencia Adicional**: La introducción del Proxy puede añadir una pequeña capa de latencia o complejidad a la llamada, ya que la solicitud debe pasar por el Proxy antes de llegar al Sujeto Real.
* **Complejidad**: Puede ser difícil de implementar correctamente si el Sujeto Real tiene muchos métodos, ya que el Proxy debe replicar la interfaz completa.
""";



String _whenToUse = """
# Aplicabilidad
Imagina que tienes una clase muy costosa de inicializar, como un objeto que carga un archivo de imagen grande o establece una conexión de red pesada (`HeavyImage`). No quieres inicializar esta imagen hasta que realmente necesite ser mostrada en pantalla.

* Proxy Virtual: Creas un `ImageProxy` que implementa la misma interfaz Image que el objeto real.
* Cuando el cliente crea una instancia de `ImageProxy`, la imagen pesada aún no se carga.
* Solo cuando el cliente llama a un método que requiere la carga real (ej: `image.display()`), el Proxy crea la instancia del `HeavyImage` y delega la llamada.

Esto se conoce como carga perezosa (lazy loading), donde el Proxy pospone la creación y uso del objeto hasta el último momento posible. Otros tipos de Proxy incluyen el Proxy de Protección (para seguridad) y el Proxy Remoto (para comunicación de red).

# Cuándo usar
* Cuando necesitas **controlar el acceso** a un objeto (Proxy de Protección, para permisos de usuario).
* Cuando quieres **evitar inicializaciones costosas** hasta que se requiera el objeto (Proxy Virtual o de carga perezosa).
* Cuando el objeto reside en un **espacio de direcciones diferente** (por ejemplo, en un servidor remoto) y necesitas un objeto local para representarlo (Proxy Remoto).
* Cuando quieres **registrar las interacciones** con el objeto (Proxy de Registro).

## Contestar la siguiente pregunta
* ¿Necesito controlar o añadir lógica auxiliar al acceso de un objeto existente (como seguridad, carga perezosa o registro), sin modificar la interfaz de ese objeto?
  * Por ejemplo:
    * Seguridad Bancaria: Un `BankProxy` verifica las credenciales del usuario antes de permitir el acceso a la cuenta bancaria real.
    * Registro de Llamadas: Un Proxy registra la hora y los parámetros de cada llamada a un servicio antes de pasarlo al servicio real.

## Ejemplos en la vida real
* **Caché de Imágenes**: Un `ImageProxy` que carga imágenes desde la web solo cuando son necesarias, almacenándolas en caché para futuras solicitudes.
* **Control de Acceso a Archivos**: Un `FileProxy` que verifica los permisos del usuario antes de permitir la lectura o escritura en un archivo.
* **Servicios Web**: Un `WebServiceProxy` que maneja la comunicación con un servicio web remoto, gestionando la serialización y deserialización de datos.
""";


List<String> _steps = [
  hypotheticalExample, step1, step2, step3, step4, explanation
];