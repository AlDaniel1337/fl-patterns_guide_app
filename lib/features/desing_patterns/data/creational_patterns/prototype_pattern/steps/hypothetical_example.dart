String hypotheticalExample = """
### Ejemplo hipotético:
Supongamos que estamos desarrollando una aplicación que maneja perfiles de usuario. 
* Cada perfil de usuario tiene varios atributos, como nombre, edad, dirección, preferencias, etc. 
* Crear un nuevo perfil desde cero cada vez que un usuario se registra puede ser costoso en términos de tiempo y recursos, especialmente si muchos usuarios comparten atributos similares.
![](assets/patterns/04_Prototype/prototype-comic-2-es.png)

Podríamos utilizar el patrón Prototype para crear un objeto prototipo de perfil de usuario con atributos predeterminados.
* Cuando un nuevo usuario se registra, en lugar de crear un perfil desde cero, simplemente clonamos el prototipo y luego modificamos los atributos específicos que deben ser diferentes para ese usuario.
![](assets/patterns/04_Prototype/prototype-comic-1-es.png)

Cada vez que se quiere crear un nuevo perfil de usuario, se clona el prototipo y se ajustan los detalles necesarios, lo que ahorra tiempo y recursos.
![](assets/patterns/04_Prototype/structure-prototype-cache.png)
""";