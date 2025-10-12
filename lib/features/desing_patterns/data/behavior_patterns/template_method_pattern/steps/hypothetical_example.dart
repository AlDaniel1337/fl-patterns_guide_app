String hypotheticalExample = """
### Ejemplo hipotético:
Imagina que estamos construyendo un sistema que necesita leer datos de diferentes tipos de archivos *(como PDF, CSV y DOC)* para analizarlos.

El flujo de trabajo general (el "algoritmo") para procesar cualquiera de estos archivos es muy similar:

* Abrir el archivo.
* Extraer el contenido (este paso es diferente para cada tipo de archivo).
* Analizar los datos extraídos (este paso también es específico para cada formato).
* Cerrar el archivo.

- Los pasos 1 y 4 (abrir y cerrar) son idénticos sin importar el tipo de documento. 
- Sin embargo, los pasos 2 y 3 son únicos para cada formato. 
  - No queremos repetir el código de abrir y cerrar en cada clase de procesamiento.

![](assets/patterns/17_TemplateMethod/problem.png)

El patrón Template Method resuelve esto de la siguiente manera:
Creamos una clase base abstracta llamada `ProcesadorDeDocumentos`. Esta clase define el esqueleto del algoritmo en un método principal, por ejemplo, `procesar()`.

El método `procesar()` llama a todos los pasos en el orden correcto:

* `abrirArchivo()` (implementado en la clase base porque es común).
* `extraerContenido()` (abstracto - debe ser implementado por cada tipo de documento).
* `analizarContenido()` (abstracto - también debe ser implementado por cada tipo de documento).
* `cerrarArchivo()` (implementado en la clase base).

![](assets/patterns/17_TemplateMethod/solution-es.png)

Luego, creamos clases concretas como `ProcesadorPDF`, `ProcesadorCSV` y `ProcesadorDOC`. Cada una de estas clases hereda de `ProcesadorDeDocumentos` y solo necesita proporcionar la implementación para los pasos abstractos (`extraerContenido()` y `analizarContenido()`) que le corresponden.

De esta forma, la clase base asegura que el flujo de trabajo general se siga siempre, mientras que las subclases se encargan de los detalles específicos de la implementación, reutilizando el código común y manteniendo una estructura organizada.

""";