# PatoFiesta

## Autor

Héctor Henríquez Cabrera

Correo: [hector.henriquez101@alu.ulpgc.es](mailto:hector.henriquez101@alu.ulpgc.es)

Asignatura: Creando Interfaces de Usuario (CIU)

## Introducción

En está quinta práctica se ha compuesto una aplicación mediante **processing 3**. Se ha creado una escena en la que se representa mediante una cámara y varias luces un escenario, en el que actúa un pato. La aplicación consta de un menú en el que se muestran todos los controles. Entre las luces se ha usado especialmente el **spotlight**, en un ambiente muy oscuro para recrear un escenario real. Además, también se ha hecho una cámara móvil con la que moverse por la escena.

## Demo

![](demo.gif)

En la demo se puede apreciar el menú que muestra todos los controles pertinentes, además, de que se puede ver el uso de luces y diferentes cámaras.

## Implementación

### Librerías

Para la implementación de esta aplicación se ha usado **GifAnimation**. Pero esta no es necesario para su reproducción en otro sistema ya que solo se uso para  la inclusión del gif, que serviría de demo, pero a  la hora de probar la aplicación no es necesario tenerlo instalado, debido a que no ejecuta nada actualmente (en caso de querer generar un gif nuevo descomentar las líneas de esta librería) .

### Diseño

Para el diseño de esta aplicación se opto por añadir la menor cantidad de elementos que dificultasen la visualización del sistema, solo teniendo texto mostrando en el menú de la cámara fija la cual se encuentra en el menú inicial. Además se usó en su mayoría el **spotlight** debido a la adecuación de este a la escena que se quería realizar.

### Funcionalidades

La primera es un menú el cual muestra los controles de la aplicación, se dispone de varias cámaras, una de ellas es móvil, la cual es  controlada mediante el ratón y las teclas: W,S,A,D,SPACE y SHIFT. El uso  de estas teclas es básicamente para movernos en la dirección apuntada  con el ratón o en su caso subir y bajar la altitud de la cámara. Además se ha añadido cambiar el filtro rgb cuando no se mantiene pulsado el ratón. Cuando se pulsa el ratón, el foco cubre más espacio y varia de color aleatoriamente.

## Controles

Todas las interrupciones manejadas en este programa han sido mediante   teclado, por lo que se han manejado las interrupciones generadas   mediante la función **keyPressed** y la función **keyReleased**. Las teclas y acciones consecuentes que las activan son:

| Tecla | Uso                                                          |
| ----- | ------------------------------------------------------------ |
| W     | Avanzar en la dirección apuntada por la cámara               |
| S     | Retroceder en la dirección apuntada por la cámara            |
| A     | Avanzar lateralmente a la izquierda en la dirección apuntada por la cámara |
| D     | Avanzar lateralmente a la derecha en la dirección apuntada por la cámara |
| SPACE | Subir la cámara verticalmente                                |
| SHIFT | Bajar la cámara verticalmente                                |
| RATÓN | Apuntar hacia donde se desea mover/apuntar la cámara         |
| CLICK | Cambia al foco aleatorio                                     |
| 1     | Quita o añade el canal Rojo del foco principal               |
| 2     | Quita o añade el canal Verde del foco principal              |
| 3     | Quita o añade el canal Azul del foco principal               |
| ENTER | Se pasa o se quita la cámara fija, en la que muestra los controles de la aplicación |

## Bibliografía

* [Guion de prácticas](https://cv-aep.ulpgc.es/cv/ulpgctp20/pluginfile.php/126724/mod_resource/content/22/CIU_Pr_cticas.pdf)

* [processing.org](https://processing.org/)
* [Modelo pato](https://free3d.com/es/modelo-3d/bird-v1--282209.html)
* [Modelo Escenario](https://free3d.com/es/modelo-3d/stage-60639.html)

