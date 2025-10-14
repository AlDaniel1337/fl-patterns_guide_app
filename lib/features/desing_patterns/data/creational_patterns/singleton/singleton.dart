import 'package:patterns_guide_app/features/desing_patterns/domain/entities/desing_pattern.entity.dart';
import 'steps/steps.index.dart';

DesingPattern singletonPattern = DesingPattern(
  name: "Singleton",
  smallDescription: "Asegura que una clase tenga una única instancia.",
  description: _descriptionPattern,
  whereToUse: _whenToUse,
  aplicability: _aplicability,
  exampleSteps: _steps,
  imageUrl: "assets/patterns/05_Singleton/singleton-mini.png",
);


String _descriptionPattern = """
# Propósito
$_description \n
![](assets/patterns/05_Singleton/singleton.png)

## Pros
$_advantages \n
## Contras
$_disadvantages \n
""";

String _description = """
Singleton (Instancia Única)
Propósito
El patrón de diseño **Singleton** (Instancia Única) es un patrón creacional que **asegura que una clase tenga una sola instancia y proporciona un punto de acceso global a ella**.
* Se utiliza cuando necesitas restringir la creación de objetos de una clase a una única instancia.
""";

String _advantages = """
* Control de Acceso Único: Garantiza que solo exista una única instancia de la clase, lo que es crucial para recursos compartidos como gestores de configuración, loggers o pools de conexiones a bases de datos.
* Acceso Global: Proporciona un punto de acceso bien definido a la instancia desde cualquier parte del código.
* Inicialización Controlada: La instancia se crea solo cuando se solicita por primera vez, un concepto conocido como "inicialización perezosa" (lazy initialization), lo que ahorra recursos.
""";

String _disadvantages = """
* Antipatrón en Multihilo: Puede volverse complicado de implementar correctamente en entornos de multiproceso si no se maneja la sincronización adecuadamente, lo que puede llevar a condiciones de carrera.
* Pruebas Unitarias Difíciles: El acoplamiento estrecho y el estado global que introduce el Singleton dificultan las pruebas unitarias, ya que el estado puede persistir entre diferentes pruebas.
* Oculta Dependencias: Al ser un acceso global, puede ocultar las dependencias del código, dificultando saber qué partes de la aplicación están usando realmente el Singleton.
""";

String _aplicability = """
# Aplicabilidad
Imagina que estás desarrollando el sistema de registro de errores (logging) de una aplicación. Solo quieres un objeto que se encargue de escribir todos los mensajes en un único archivo de registro. 
* Permitir múltiples instancias podría causar problemas de concurrencia y corrupción del archivo.

El patrón Singleton te permite:
* Hacer que el constructor de la clase `Logger` sea privado (para que nadie pueda crear instancias directamente con new).
* Crear un método estático público (típicamente llamado `getInstance()`) dentro de la clase.
* Este método verifica si la instancia única ya existe. 
  * Si no existe, la crea; 
  * Si ya existe, devuelve la instancia existente.

De esta manera, no importa cuántas veces se llame a `Logger.getInstance()`, siempre se recibirá el mismo objeto `Logger`.
""";

String _whenToUse = """# Cuándo usar
* Cuando debe haber exactamente una instancia de una clase, y debe ser accesible para los clientes desde un punto de entrada conocido y global.
* Cuando la instancia única debe poder extenderse por subclases (aunque esto es menos común).
* Para controlar recursos compartidos como pools de conexiones, gestores de configuración o loggers de sistema.

## Contestar la siguiente pregunta
* ¿Necesito restringir la existencia de esta clase a una única instancia a lo largo de toda la aplicación, y proveer un punto de acceso global a ella?

**Por ejemplo:**
* Gestor de Configuración: 
  * Solo debe haber un objeto que cargue los parámetros de configuración de la aplicación.
* Pool de Conexiones: 
  * Solo debe haber un objeto que administre y distribuya las conexiones disponibles a la base de datos.

## Ejemplos en la vida real
* Sistemas de UI que deben soportar múltiples temas o estilos.
* Sistemas de gestión de bases de datos que deben trabajar con diferentes motores de bases de datos.
""";


List<String> _steps = [
  hypotheticalExample, step1, step2, explanation
];