---
title: Premier prototype fonctionnel
date: 2020-03-17 10:50:40
tags:
---

Nous travaillons depuis quelques heures déjà et la deuxième itération semble prometteuse. Nous avons de la chance, les moteurs d'essuie-glace ont deux vitesses, ce qui peut simplifier le travail de calcul de la forme et des dimensions de la came qui appuiera sur le coussin BVM.

Pour calculer la forme de la came, nous devrons prendre en compte les positions des axes du moteur et de la came ainsi que l'angle d'ouverture provoqué par le BVM. Avec un petit morceau de ruban adhésif, nous avons réussi à compter les tours du moteur, vitesses lente et rapide.

Finalement, plutot que de faire un engrenage denté compliqué à mécaniser, nous avons décidé de parier sur un jeu de friction ; dans notre cas, ce sont deux disques qui tournent en se frottant sur leurs périphérie. 

Le mode le plus lent du moteur le fait tourner  à 45 tr / min, or la respiration assistée chez un adulte doit être comprise entre [12 et 20 tr/min](https://es.wikipedia.org/wiki/Ventilación_mecánica). Nous savons donc que le rapport de réduction doit être de 1: 3.

Nous entrons ces infos techniques dans le logiciel de calcul  Matlab puis, en utilisant cette [archive git](https://github.com/ProtofyTeam/OxyGEN/tree/master/Matlab%20Files), nous obtenons les dimensions et la forme de la came à découper.

<img src="/fr/images/primer-prototipo/matlab-vs-real.jpeg" width="450" alt="Capture d’écran à coté des pièces réelles">

Ces petites avancées nous motivent, nous avons effectué les premiers tests avec le design de la came et les engrenages semblent fonctionner, nous arrivons à un peu plus de 15 tr / min. Cela est conforme aux données recueillies auprès des médecins.

<br/> 

{% youtube 0386hOgcQTA %}

<br/> 

Nous pouvons publier les premiers éléments de construction détaillés [ici](https://github.com/ProtofyTeam/OxyGEN), et terminer le premier prototype fonctionnel.

Il est maintenant temps de faire grandir ce projet, et nous allons essayer de l'ouvrir au maximum de personnes pour que tout le monde puisse travailler à l'améliorer. C'est le début, mais nous sommes convaincus que la route est encore longue. Nous espérons que tout cela inspire les makers souhaitant aider les professionnels de la santé en ces temps difficiles. 

Comme l'a dit le poète: **Caminante, no hay camino. Se hace camino al andar.**
