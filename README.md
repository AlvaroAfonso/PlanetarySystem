# PlanetarySystem
Proyecto de "Creando interfaces de usuario", asignatura de la ULPGC (Universidad de Las Palmas de Gran Canaria) hecho por **Álvaro Javier Afonso López**

### Introducción
El objetivo de esta práctica es crear un sistema planetario con el cual aprender el funcionamiento y el uso de los sistemas de coordenadas 3D. Consiste en un prototipo de nuestro sistema solar, donde podemos ver que cada planeta tiene una rotación y traslación propia, pudiendo tener cada uno de ellos algún satelite propio.

![Gif de una prueba del proyecto]()

### Desarrollo
Lo primero a identificar en todo proyecto son los objetos/clases que se manejarán. En un primer momento pensé en crear una clase Planeta, pero pense en algo todavía más abstracto al ver que todo lo que tenía en común los distintos elementos que manejaría es que todos orbitan, por tanto, opté por crear la clase OrbitalObject, esta consta de los datos necesarios, como son el radio, la distancia el eje de coordenadas elegido, textura que se aplicará, rapidez de rotación y movimiento, y por último, el nombre. Además, este objeto podrá tener otros objetos de su mismo tipo en órbita.

### Controles
* ESC para cerrar la aplicación
* Flechas para rotar verticalmente el sistema planetario y observarlo mejor
* Teclas 'I' y 'O' para aumentar o alejar la imagen

### Dificultades
La dificultad a destacar sin duda era precisamente el objetivo a aprender, el manejo de los sistemas de coordenadas, puede ser bastante complicado al inicio. En mi caso, hubo una situación en la que modificaba la rotación de un objeto individual sin haber guardado el sistema de coordenadas actual primero, por tanto estaba modificando el sistema de coordenadas general, haciendo que un pequeño cambio a pequeña escala afectara a todo el modelo por el simple hecho de no aislar los cambios a otro sistema más específico.

### Bibliografía
* Documentos de la propia práctica
* Página oficial de Proccesing
* http://planetpixelemporium.com/planets.html
