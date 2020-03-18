---
title: Cam shaft design
date: 2020-03-18 08:50:40
tags:
---

Before a deeper thought, it’s easy to believe that since the medical staff use AMBU devices manually, the nhale and cycle curve shape is not a critical point. However, AMBU devices are designed in order to be used during short periods of time, and a mid or long-term use of a ventilator with inaccurate or irregular cycles, could generate negative effects on the patient. For this reason, one of the **key tasks of the project is to accurately design the cam that acts on the AMBU.**

Hospital’s mechanical ventilators have a large number of adjustment parameters (total volume displaced, airflow rate and duration of inhalation and exhalation phases, waiting time between both phases, etc.), to adapt the shape and speed of the breathing cycles to the physiognomy of each patient (sex, age, pathologies, etc). However, the adjustment of these parameters is carried out electronically, unattainable with **a [DIY](https://en.wikipedia.org/wiki/Do_it_yourself) mechanical system like** Oxy**GEN**.

For this reason, our team has created a **MatLAB** script (also suitable for open source programs such as **OCTAVE**), which generates a template for the construction of cams adapted to custom breathing cycles, as well as compatible with possible different designs and variations in the dimensions of the device’s structure.

For the generation of a “standard” cam, we take as reference a typical breathing cycle, for which abundant information is available on the network. The BioGears project it’s being a very helpful source of information, [this section](https://www.biogearsengine.com/documentation/_respiratory_methodology.html) in particular. Both for its great contribution to science, as well for its magnificent and very complete section of external references.

The first step in generating the cam, is the definition of the mathematical function (curves) that will describe its shape.

<!-- <img src="/images/diseno-leva/pict1.jpg" width="450" alt="OxyGEN cam shaft design image 1"> -->

<!-- **Top to bottom: Reference curve (external source), regression function, corresponding cam. From left to right: V1 bi-sinusoidal regression, V2 parabolic-logarithmic regression, V3 regression using gamma distributions.** -->

It should be remembered that any functional and reliable cam must be described by means of a continuous and differentiable function, and that (at least) its first derivative is also continuous. Otherwise, we would obtain a cam with spikes, which would generate improper operation. This has been particularly challenging since **the regression curve describing the respiration cycle is a piecewise defined function**.

<img src="/images/diseno-leva/pict2.jpg" width="450" alt="OxyGEN cam shaft design image 2">

**Regression using two gamma functions.**

To guarantee the derivability of the curve at the points of intersection between the two gamma functions, transition functions with sinusoidal edges are used, which are infinitely differentiable. For future versions it is expected to be able to use [Bezier curves](https://en.wikipedia.org/wiki/Bézier_curve), which would be ideal for the required purpose.

<img src="/images/diseno-leva/pict3.jpg" width="450" alt="OxyGEN cam shaft design image 3">

**Normalized breathing curve (blue), with its corresponding first derivative (red).**

Once the function is defined, next step is to normalize it on the vertical axis and adjust it to 2 \* Pi on the horizontal axis, with the purpose of ensuring an easy adjustment to the necessary dimensions defined by the (variable) design of the device structure. Note that the horizontal axis corresponds to one revolution of the cam and not to the proper time axis either.

For the generation of the cam, the normalized curve measurements are adjusted to the minimum and maximum radius necessary for the cam, and then plotted using polar coordinates.

<img src="/images/diseno-leva/pict7.jpg" width="450" alt="OxyGEN cam shaft design image 7">

**Single-cycle cam, minimum radius = 4 cm and travel distance = 9 cm.**

In the same way, cams can be generated to perform 2, 3 or more breathing cycles for each revolution, best for low-rev motors. Note that, to use these cams, it is necessary to choose a minimum radius greater than the one of the single-cycle per revolution cams, otherwise inappropriate geometries (valleys) would be generated in smooth operations.

<img src="/images/diseno-leva/pict5.jpg" width="450" alt="OxyGEN cam shaft design image 5">

**Inadequate 2 and 3 cycle cam designs.**

<img src="/images/diseno-leva/pict6.jpg" width="450" alt="OxyGEN cam shaft design image 6">

**Suitable 2 and 3 cycle cam designs.**

Finally, here we leave the link to our [repository](https://github.com/ProtofyTeam/OxyGEN/tree/master/Matlab%20Files). To relax a bit a song for engineers. **Trust me, I'm an engineer! With epic skill and epic gear!**

Elbows for everybody!
