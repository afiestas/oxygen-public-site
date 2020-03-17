---
title: Primer prototipo funcional
date: 2020-03-17 10:50:40
tags:
---

Llevamos ya bastantes horas de trabajo y la segunda iteración parece prometedora. Tenemos algún golpe de suerte, los motores de limpiaparabrisas tienen dos velocidades cosa que nos puede simplificar el trabajo de calcular la forma y dimensiones de la leva.

Para calcular la leva tendremos que tener en cuenta las posiciones de los ejes tanto del motor como el de la leva así como el ángulo de apertura provocado por el AMBU. Con un pequeño trozo de cinta adhesiva conseguimos realizar el conteo de las vueltas que da el conjunto motor, en las dos velocidades disponibles.

Al final decidimos apostar por un juego de reducción por fricción; en nuestro caso formado por dos discos que giran muy juntos. Pensamos que la reducción por fricción basada en discos es mucho más fácil de construir que los engranajes dentados.

El modo de giro más lento hace funcionar el sistema a 45 rpm, con esto y sabiendo que la respiración asistida en un adulto debe ser entre [12 y 20 rpm](https://es.wikipedia.org/wiki/Ventilación_mecánica). Sabemos que la relación de reducción debe ser 1:3.

Introducimos los números en Matlab y usando este [repositorio](https://github.com/ProtofyTeam/OxyGEN/tree/master/Matlab%20Files), obtenemos las dimensiones de la leva.

<!-- <img src="/images/primer-prototipo/matlab-vs-real.jpeg" width="450" alt="Captura de pantalla junto a las piezas reales"> -->

Los pequeños avances nos motivan, realizamos las primeras pruebas con el diseño de la leva y los engranajes parecen funcionar, tenemos algo más de 15 rpm. Esto está en consonancia con los datos recopilados de los médicos.

<br/> 

{% youtube -KeWwQIYlhw %}

<br/> 

Así pues con los elementos de construcción detallados [aquí](https://github.com/ProtofyTeam/OxyGEN), podemos dar por terminado el primer prototipo funcional.

Ahora toca hacer crecer este proyecto, vamos a intentar abrirlo al máximo número de personas para que todos puedan trabajar en mejorarlo, esto es el inicio pero estamos convencidos que el camino es largo. Esperamos que todo esto inspire a los makers a ayudar y colaborar con el esfuerzo del personal sanitario en estos momentos tan complejos.

Como dijo el poeta: **Caminante, no hay camino. Se hace camino al andar**.

Codazos para todos
