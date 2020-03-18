---
title: Diseño de la leva
date: 2020-03-18 08:50:40
tags:
---
Inicialmente podría pensarse que, dado que el personal sanitario usan los dispositivos AMBU de forma manual, la forma de las curvas de los ciclos de inhalación y exhalación no es algo crítico. Sin embargo, los dispositivos AMBU están diseñados para ser usados durante un corto espacio de tiempo, y el uso prolongado de un respirador con unos ciclos inexactos o irregulares, sí podría llegar a generar efectos negativos sobre el paciente. Por ello, una de las **tareas clave del proyecto, es el correcto diseño de la leva de acción sobre el AMBU**.

Los respiradores mecánicos hospitalarios cuentan con una cantidad elevada de parámetros de ajuste (volumen total desplazado, caudal y duración de la inhalación y exhalación, tiempos muertos entre ambas fases, etc.), para adaptar la forma y velocidad de los ciclos de respiración a la fisionomía de cada paciente (sexo, edad, patologías, etc). Sin embargo, el ajuste de estos parámetros se realiza de forma electrónica, inalcanzable; a priori, con un **sistema mecánico [DIY](https://es.wikipedia.org/wiki/Hágalo_usted_mismo) como** Oxy**GEN**.

Por esta razón, el equipo de trabajo crea un script **MatLAB** apto también para programas de código abierto como **OCTAVE**, que permite generar una plantilla para la construcción de levas adaptadas a ciclos de respiración personalizados, así como compatibles con los posibles diferentes diseños y variaciones en las dimensiones de la estructura del dispositivo.

Para la generación de una leva “estándar” tomamos como referencia los ciclos de respiración típicos, sobre los que se dispone de abundante información en la red. Nos ha supuesto una gran ayuda el proyecto BioGears, y en particular, el enlace a su [apartado](https://www.biogearsengine.com/documentation/_respiratory_methodology.html). Tanto como por su gran aportación a la ciencia, como por su magnífico y muy completo apartado de referencias externas.
El primer paso para la generación de la leva, es la definición de la función matemática (curvas) que describirán su forma. 

<!-- <img src="/es/images/diseno-leva/pict1.jpg" width="450" alt="OxyGEN diseño levas imagen 1"> -->

<!-- **De arriba abajo: Curva de referencia, función de regresión, leva correspondiente. De izquierda a derecha: V1 regresión bi-sinusoidal, V2 regresión parabólica-logarítmica, V3 regresión mediante distribución gamma.** -->

Cabe recordar que, toda leva funcional y fiable, ha de ser descrita mediante una función continua y derivable, y que (al menos) su primera derivada también sea continua. De no ser así obtendríamos una leva con picos, que generarían un funcionamiento inadecuado. Ello ha supuesto un reto particular, ya que **la curva de regresión que describe el ciclo de respiración es una función definida a trozos.**

<img src="/es/images/diseno-leva/pict2.jpg" width="450" alt="OxyGEN diseño levas imagen 2">

**Regresión mediante dos funciones gamma.**

Para garantizar la derivabilidad de la curva en los puntos de intersección entre las dos funciones gamma, se han usado funciones de transición con flancos sinusoidales, que son infinitamente derivables. Para versiones futuras se espera poder utilizar [curvas de Bezier](https://es.wikipedia.org/wiki/Curva_de_B%C3%A9zier), idóneas para el fin requerido.

<img src="/es/images/diseno-leva/pict3.jpg" width="450" alt="OxyGEN diseño levas imagen 3">

**Curva de respiración normalizada (azul), con su correspondiente primera derivada (rojo).**

Una vez se dispone de la función, la normalizamos en el eje vertical y ajustamos a 2*pi en el eje horizontal, para su fácil ajuste a las dimensiones necesarias definidas por el diseño (variable) de la estructura del dispositivo. Nótese que el eje horizontal tampoco corresponde con el eje temporal adecuado, sino a una revolución de la leva.

Para la generación de la leva, se ajustan las medidas de la curva a los radios mínimos y máximos necesarios para la leva, y se procede a su plot en coordenadas polares. 

<img src="/es/images/diseno-leva/pict7.jpg" width="450" alt="OxyGEN diseño levas imagen 7">

**Leva de un ciclo, de radio min 4 cm y recorrido de 9 cm.**

De la misma forma, se pueden generar levas que realicen 2, 3 o más ciclos de respiración por cada revolución, para su uso en motores de bajas revoluciones. Nótese que, para el uso de estas levas, es necesario escoger un radio mínimo superior al de las levas de un solo ciclo por revolución, o de lo contrario se generarían geometrías inadecuadas (valles) para el funcionamiento suave.

<img src="/es/images/diseno-leva/pict5.jpg" width="450" alt="OxyGEN diseño levas imagen 5">

**Diseños inadecuados de levas de 2 y 3 ciclos.**

<img src="/es/images/diseno-leva/pict6.jpg" width="450" alt="OxyGEN diseño levas imagen 6">

**Diseños adecuados de levas de 2 y 3 ciclos.**

Finalmente, aquí os dejamos el link a nuestro [repositorio](https://github.com/ProtofyTeam/OxyGEN/tree/master/Matlab%20Files). Y para relajarnos un poco una canción para ingenieros. **Trust me, I'm an engineer! With epic skill and epic gear!**

Codazos para todos!
