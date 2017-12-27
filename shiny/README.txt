He modificado el ejercicio guiado que hicimos el 06/07 en clase con lo siguiente, me he centrado especialmente en añadir contenido y dar formato a la página de portada y a la ejecución de la aplicación shiny en un navegador:

- Correcciones necesarias para que la aplicación se ejecutara correctamente: cierres de paréntesis incorrectos, comas faltantes, nombres incorrectos, codificación a UTF8 (no me permitía utilizar tildes), nombres de las categorías incorrectas, etc. que en clase no había hecho correctamente.

- Eliminación del logo de R en el cuerpo de la página, e incorporación en la barra de navegación para dejar más espacio para el texto, imágenes y vídeo.

- Añadido favicon (logo de shiny) para el encabezado de la pestaña del navegador y para facilitar la identificación de la página.

- Añadido nombre de la aplicación "Ejercicio evaluación Shiny", para que aparezca en la pestaña del navegador (al eliminar el nombre de la barra de navegación "Datos bancarios" aparecía texto con el código html en la pestaña del navegador)

- Inclusión de un vídeo embebido con una pequeña recreación del problema planteado para el TFM. He usado un iframe del vídeo que me he descargado de la web de la ESA

- Inclusión de un nuevo panel con la descripción de mi TFM. En este panel he utilizado la función"fluidRow" para poder poner en la misma fila la descripción de mi TFM y el video embebido mencionado anteriormente. He creado un layout en el que he dado la mism anchura a la columna del texto que a la del vídeo.
 
- He utilizado la etiqueta html "p" para separar párrafos en el texto, y la etiqueta "a" para añadir un hipervínculo con url de la web de la competición

- Otros cambios de estilo y formato


He modificado las propiedades por defecto del proyecto para que la ejecución de la aplicación shiny se ejecute de forma externa, es decir en un navegador web, para que el vídeo se incruste correctamente. Por favor, cuando ejecute la aplicación seleccione la opción "Run External" si no es la seleccionada por defecto.

Le adjunto un fichero zip que con el siguiente contenido:
- directorio "www": recursos utilizados en la aplicación (logos)
- credit.csv: fichero de datos que consume la aplicación
- ui.R: código de la interfaz de usuario de la aplicación shiny (apariencia y layout)
- server.R: código del servidor de la aplicación shiny
- global.R: variables de entorno visibles para ui.R y server.R
- inmaculadaPereaFernandez.Rproj: proyecto R que contiene el código de la aplicación shiny

Le adjunto además una captura de pantalla del navegador para que vea el contenido de la home de la aplicación  por si hubiese problemas de ejecución.