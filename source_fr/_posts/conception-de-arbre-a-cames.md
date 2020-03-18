---
title: Conception de l'arbre à cames
date: 2020-03-18 08:50:40
tags:
---

À première vue, on pourrait supposer que les cycles d’inhalation et exhalation ne sont pas critiques, vu que c’est le personnel hospitalier qui utilise les dispositifs BVM de forme manuelle. Mais il faut tenir compte que les BVM sont conçus pour être utilisés pendant un temps limité : leur utilisation trop prolongée de façon inexacte, ou avec un rythme trop irrégulier, pourrait générer des effets négatifs sur les patients. C est pour cela qu'une **mission clef du projet, est le design de la came qui actionne le BVM en appuyant dessus**.
 
Les respirateurs professionnels mécaniques des hôpitaux sont eux équipés d’un grand nombre de paramètres ajustables (volume d’air total déplacé, écoulement et durée de l’inhalation et l’expiration, temps morts entre les deux phases …). Cela leur permet de s’adapter à la forme et à la vitesse des cycles de respiration de chaque patient (sexe, âge, pathologies…). L’ajustement de ces paramètres se réalisent via l'électronique. Ce qui est inatteignable avec un **système purement mécanique [DIY](https://en.wikipedia.org/wiki/Do_it_yourself) com** Oxy**GEN**.
 
C est pour cette raison que l’équipe de travail a créé un script sur le logiciel **MatLAB** ( compatible avec des programmes de code ouvert comme **OCTAVE**), ce qui permet de générer différents modèles pour la fabrication de cames adaptées à des cycles de respiration personnalisés. Cela permet également d’ajuster le design pour des appareils qui auraient des tailles différentes de notre premier prototype. 
 
Pour générer le modèle de la came ‘standard’ du prototype, nous avons utilisé les références d’un cycle de respiration type, une information disponibles sur beaucoup de sites médicaux spécialisés sur le sujet. Le projet de BioGears nous a particulièrement aidé, [comme ce lien](https://www.biogearsengine.com/documentation/_respiratory_methodology.html). Leurs connaissances techniques sont impressionnantes, de même que leurs références externes.
 
La première étape pour générer le modèle de cette came , est de définir la fonction mathématique qui décrira sa forme (sa courbe graphique) .

<!-- <img src="/fr/images/diseno-leva/pict1.jpg" width="450" alt="OxyGEN image de conception d'arbre à cames 1"> -->

<!-- **De haut en bas : Courbe de référence, fonction de régression, came correspondante. De gauche à droite: V1 régression bi-sinusoïdal, V2 régression parabolique-logarithmique, V3 régression  bi-sinusoidal, V2 regresión parabólica-logarítmica, V3 regresión par distribution gama.** -->

Un point important a ne pas oublier est que toute came, pour être fonctionnelle et fiable, doit être décrite par une fonction continue et dérivable, et dont au moins sa première dérivée soit également continue. Sinon, nous obtiendrions une came avec des pics, qui générerait un fonctionnement inadéquat. Ceci a été un défi intéressant à résoudre, car **la courbe de régression qui décrit un cycle de respiration est une fonction définie par morceaux**.

<img src="/fr/images/diseno-leva/pict2.jpg" width="450" alt="OxyGEN image de conception d'arbre à cames 2">

**Régression par deux fonctions gamma.**

Pour garantir la dérivabilité de la courbe dans les points d’intersection entre les deux fonctions gamma, nous avons utilisé des fonctions de transition avec des “flancs" sinusoïdaux, qui eux sont dérivables infiniment. Pour des futures itérations, nous espérons pouvoir utiliser les [courbes de Bezier](https://fr.wikipedia.org/wiki/Courbe_de_B%C3%A9zier), idéales pour le but recherché.

<img src="/fr/images/diseno-leva/pict3.jpg" width="450" alt="OxyGEN image de conception d'arbre à cames 3">

**Courbe de respiration normalisée (bleu), avec sa dérivée première correspondante (rouge).**

Une fois la fonction disponible, nous la formalisons sur l'axe vertical et la réglons à 2 * pi sur l'axe horizontal, pour un ajustement aisé aux dimensions nécessaires ( dimensions définies par la conception variable de la structure de l’appareil, qui pourra donc être différente de la notre) . A noter que l'axe horizontal ne correspond pas non plus à l'axe temporaire correct, mais à un tour de came complet.

Pour la génération du modèle de came, les mesures de la courbe sont ajustées aux rayons minimum et maximum nécessaires pour la came, et elles sont tracées en coordonnées polaires.

<img src="/fr/images/diseno-leva/pict7.jpg" width="450" alt="OxyGEN image de conception d'arbre à cames 7">

**Came à un cycle, rayon min 4 cm et course 9 cm.**

Suivant la même logique, des cames peuvent être générées qui effectuaient 2, 3 cycles de respiration ou même plus pour chaque révolution, par une utilisation de moteurs de basse consommation. A noter que, pour un fonctionnement en douceur de ces cames à cycles multiples, il sera nécessaire de choisir un rayon minimum supérieur à celui des cames à cycle unique par tour, sinon des géométries inappropriées (vallées) seraient générées.

<img src="/fr/images/diseno-leva/pict5.jpg" width="450" alt="OxyGEN image de conception d'arbre à cames 5">

**Conceptions de cames à 2 et 3 cycles inadéquates.**

<img src="/fr/images/diseno-leva/pict6.jpg" width="450" alt="OxyGEN image de conception d'arbre à cames 6">

**Modèles de came adaptés à 2 et 3 cycles.**

Enfin, vous avez ici le lien vers notre [archive git](https://github.com/ProtofyTeam/OxyGEN/tree/master/Matlab%20Files). Comme le dit la chanson pour les ingénieurs: **Trust me, I'm an engineer! With epic skill and epic gear!**