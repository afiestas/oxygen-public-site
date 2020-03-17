---
title: First functional prototype
date: 2020-03-17 10:50:40
tags:
---
We have already been working for quite a few hours and the second iteration looks promising. We are lucky, the wiper motors have two speeds, which can simplify the work of calculating the shape and dimensions of the cam.

To compute the cam we will have to take into account the positions of the axes of both the motor and the cam as well as the opening angle caused by the AMBU. With a small piece of tape we managed to count the turns of the motor, at the two available speeds.

In the end we decided to bet on a friction reduction game; in our case formed by two discs that rotate closely together. We think disk-based friction reduction is much easier to build than toothed gears.

The slowest spin mode operates the system at 45 rpm, with this and knowing that assisted breathing in an adult should be between [12 and 20 rpm](https://es.wikipedia.org/wiki/Ventilación_mecánica), we know that the reduction ratio must be 1: 3.

We crush the numbers in Matlab and using this [repository](https://github.com/ProtofyTeam/OxyGEN/tree/master/Matlab%20Files), we get the dimensions of the cam.

<img src="/images/primer-prototipo/matlab-vs-real.jpeg" width="450" alt="Screenshot from a computer and real hardware parts">

Motivated, we conduct the first tests with the cam design and the gears seem to work, we have just over 15 rpm. This is in line with data collected from doctors.

<br/> 

{% youtube -KeWwQIYlhw %}

<br/> 

So with the construction elements detailed [here](https://github.com/ProtofyTeam/OxyGEN), we finish the first functional prototype.

Now it’s time to grow this project, we will make it available to the maximum number of people so that everyone can help improve it. This is only the beginning but we know the road is going to be long. We hope that all of this inspires makers to help and collaborate with the efforts of healthcare personnel in these complex times.

As the spanish poet said: **Walker, there is no way. You make your way by walking.**

Elbows for everyone
