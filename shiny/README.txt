He modificado el ejercicio guiado que hicimos el 06/07 en clase con lo siguiente, me he centrado especialmente en a�adir contenido y dar formato a la p�gina de portada y a la ejecuci�n de la aplicaci�n shiny en un navegador:

- Correcciones necesarias para que la aplicaci�n se ejecutara correctamente: cierres de par�ntesis incorrectos, comas faltantes, nombres incorrectos, codificaci�n a UTF8 (no me permit�a utilizar tildes), nombres de las categor�as incorrectas, etc. que en clase no hab�a hecho correctamente.

- Eliminaci�n del logo de R en el cuerpo de la p�gina, e incorporaci�n en la barra de navegaci�n para dejar m�s espacio para el texto, im�genes y v�deo.

- A�adido favicon (logo de shiny) para el encabezado de la pesta�a del navegador y para facilitar la identificaci�n de la p�gina.

- A�adido nombre de la aplicaci�n "Ejercicio evaluaci�n Shiny", para que aparezca en la pesta�a del navegador (al eliminar el nombre de la barra de navegaci�n "Datos bancarios" aparec�a texto con el c�digo html en la pesta�a del navegador)

- Inclusi�n de un v�deo embebido con una peque�a recreaci�n del problema planteado para el TFM. He usado un iframe del v�deo que me he descargado de la web de la ESA

- Inclusi�n de un nuevo panel con la descripci�n de mi TFM. En este panel he utilizado la funci�n"fluidRow" para poder poner en la misma fila la descripci�n de mi TFM y el video embebido mencionado anteriormente. He creado un layout en el que he dado la mism anchura a la columna del texto que a la del v�deo.
 
- He utilizado la etiqueta html "p" para separar p�rrafos en el texto, y la etiqueta "a" para a�adir un hiperv�nculo con url de la web de la competici�n

- Otros cambios de estilo y formato


He modificado las propiedades por defecto del proyecto para que la ejecuci�n de la aplicaci�n shiny se ejecute de forma externa, es decir en un navegador web, para que el v�deo se incruste correctamente. Por favor, cuando ejecute la aplicaci�n seleccione la opci�n "Run External" si no es la seleccionada por defecto.

Le adjunto un fichero zip que con el siguiente contenido:
- directorio "www": recursos utilizados en la aplicaci�n (logos)
- credit.csv: fichero de datos que consume la aplicaci�n
- ui.R: c�digo de la interfaz de usuario de la aplicaci�n shiny (apariencia y layout)
- server.R: c�digo del servidor de la aplicaci�n shiny
- global.R: variables de entorno visibles para ui.R y server.R
- inmaculadaPereaFernandez.Rproj: proyecto R que contiene el c�digo de la aplicaci�n shiny

Le adjunto adem�s una captura de pantalla del navegador para que vea el contenido de la home de la aplicaci�n  por si hubiese problemas de ejecuci�n.