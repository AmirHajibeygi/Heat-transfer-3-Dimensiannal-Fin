# Heat-transfer-3-Dimensiannal-Fin
This repository features the 3D version of my previous Fin project. It provides an in-depth simulation and analysis of a specific fin structure. The code accurately models the fin's behavior in three dimensions, allowing detailed observation and precise results



**In this project, we intend to investigate heat transfer in three-dimensional space and cylindrical coordinates.**
**Consider a cylindrical copper fin with a base of 20 cm and a steel disk with a diameter of 40 cm. The overall objective of this project is to investigate the heat transfer from this fin to the disk below it. This assembly is located on the right half in the vicinity of air with a temperature of 40 degrees Celsius and a velocity of 1 meter per second, and on the left half in contact with water with a temperature of 30 degrees Celsius. Assume that the air and water have a large volume and therefore during the process Do not change temperature.**

![Fin](images/Fin2.PNG)



**You can find the required properties for copper from the references, but the properties related to the disc steel are as described below:**

![Fin](images/Fin.PNG)


**And also you can see the 3 Dimensional picture of this Fin:**

![Fin](images/Fin3.PNG)


**Desires:**
  - 1. **First, assume that the fin base, the 20 cm cross-sectional surface, has a constant temperature of 35 degrees Celsius, and the bottom surface of the steel disk, i.e. the 40 cm cross-sectional surface, is insulated. On both sides, there are air and water according to the problem description. Under these conditions, calculate the temperature of the nodes in the base conditions and draw the temperature profile. Then, at a distance of 5 cm from the top surface of the disk, draw the exact bottom layer of the rubber fin according to the radius. To draw In the diagram, consider the meshes associated with angles 0 and 180.For the next mesh, consider a square mesh with a side length of 1 mm throughout the figure.
For the next mesh, divide the angle of the complete circle into 10 parts and mesh the radii with a length of 2 cm and a length of 2.5 cm. For example, in the figure below, a 40 cm cross-section has been trimmed:**

      ![Fin](images/Fin4.PNG)


  - 2.  **Now suppose that instead of a constant temperature in the 20 cm section, a constant current of 5 × 104 𝑊𝑊/𝑚𝑚^2 is applied and the entire bottom disk is insulated so that the only way for heat to enter it is through the 5 cm fin base. In this section, considering the temperature of the base of the alpha section as the initial temperature, find the time required for the minimum temperature between the meshes of the steel disk to reach 48 degrees Celsius.**



   
  -  3.  **At the moment when the minimum temperature reached 48 degrees, also find the maximum temperature in the disk and plot the temperature changes of these nodes over time and analyze the results.**
   
  -  4.  **Draw a three-dimensional graph of the temperature of the central nodes over the time calculated in Part 2. The axes of the graph should include the temperature and location of each node and time.**
