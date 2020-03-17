---
title: A la recherche d'un moteur
date: 2020-03-16 16:39:40
tags:
---

Après les premiers problèmes avec le moteur de micro-onde, et avec un prototype à moitié assemblé, il nous faut rectifier et trouver de nouvelles pistes. Il est temps d'être ingénieur : on retourne au tableau blanc !

Notre objectif est d'identifier les pièces que tout l monde peut avoir à portée de main. Nous réfléchissons donc à des objets très courants qui pourraient avoir des pièces très précieuses pour construire Oxy**GEN** dans des endroits où il est impensable de trouver des composants électroniques ou des imprimantes 3D, et où le temps sera rare. 

<img src="/fr/images/buscando-un-motor/material.jpeg" width="450" alt="Différents éléments d'électronique sur la table">

L'un des éléments qui nous inquiète le plus est le moteur. Nous avons besoin de couple, mais il n'est pas possible de construire une grande boîte de vitesses pour répondre aux exigences de vitesse, cela invaliderait l'idée de tirer parti des pièces des petits appareils courants. Nous avons commencé à chercher parmi nos contacts, à parler du défi de voir quelles idées ils ont. Les gens de [Zocama](https://www.zocama.com) nous donnent un indice: utiliser un moteur d'essuie-glace (qu’ils utilisent eux-mêmes pour de nombreux hacks).. Ce sont des moteurs qui ont du couple, et surtout qui sont dimensionnés pour fonctionner plusieurs heures, contrairement à certains petits électroménagers.

Mais Barcelone est désormais isolée. Il est difficile désormais de se faire livrer des pièces. On nous dit que quelqu'un a une vieille PEUGEOT 504 Ambulance (une belle coïncidence) des années 70 dans un garage. Ils parviennent rapidement à démonter l'essuie-glace et à retirer le moteur, que nous allons récupérer.

<br/> 

{% youtube r3Oorh5tIIU %}

<br/> 

Maintenant, il suffit de trouver quelque chose qui nous permet d'alimenter le moteur. C'est plus facile, car ces moteurs fonctionnent à 12V. Un chargeur de batterie de voiture ou une alimentation d'ordinateur PC (type ATX) sont des candidats parfaits et très faciles à obtenir n'importe où. Il semble donc que le moteur d’essuie-glace soit un bon candidat. 

D'un autre côté, en gardant en tête ce que nous avions appris lors de l’[étape précédente](https://oxygen.protofy.xyz/es/15/03/2020/obteniendo-los-requisitos-de-diseno/), nous avons démonté en parallèle des mixeurs de cuisine, des perceuses, des presse-agrume etc. afin d'avoir des alternatives potentielles à portée de main.

<img src="/fr/images/buscando-un-motor/motors.jpeg" width="450" alt="Différents moteurs sur la table">

À ce stade, il nous semble essentiel de contacter à nouveau un médecin. Certains médecins sont en quarantaine mais veulent aider le projet en nous transmettant les points clés à bien considérer. Le plus critique est que l’on peut faire beaucoup de mal à un patient si on envoie trop d'air dans son corps, sachant  que les limites de tolérances sont très faibles. L'AMBU nous aide à relever ce défi car il protège de ces risques ( il intègre  système de surpression).

Une autre chose intéressante est que nous devrions être en mesure d'ajuster la fréquence de la respiration d'une façon ou d'une autre, et ainsi nous adapter sommairement à la capacité respiratoire d’un patient. Avoir un moteur à courant continu nous facilitera bien les choses à cet égard. Mais cela sera pour plus tard : nous continuons avec la solution d'urgence accessible à tous, et nous prévoyons d'ajuster ce paramètre grâce à une future itération sur la partie mécanique.

Finalement, il semble que nous ayons désormais un moteur et quelques idées d’exécution réalistes. 

Comme le dit le proverbe: **Se réunir est un début. Rester ensemble est un progrès. Travailler ensemble est un succès**.
