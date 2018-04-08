# hw_diffusion
Homework for Garcia Ch. 6

<div>
  
*   [Problem 1 (in-class)](#2)
*   [Problem 2 (homework)](#3)

</div>

## Problem 1 (in-class)<a name="2"></a>
Complete the <tt>diffusion_exercise.m</tt> program to implement the FTCS, Richardson, and DuFort-Frankel algorithms for solving the 1D heat diffusion equation along a bar of length *L* from *x* = -*L*/2 to +*L*/2. 

## Problem 2 (homework)<a name="3"></a>
Modify the <tt>diffusion_hw.m</tt> program to solve the 1D heat diffusion equation along a bar of length *L*, from *x* = -*L*/2 to +*L*/2, for the following conditions:

 * Initial conditions: 
   * *T* = 1 for *x* < -*L*/4
   * *T* = 0 for *x* ≥ -L/4
 * Run the computation for 500 steps with a step size of τ = 0.0001
 * Run the computation for 3 different boundary conditions:
   * Case 1: Dirichlet conditions with *T*(-*L*/2) = 1 and *T*(*L*/2) = 0
   * Case 2: Neumann conditions for insulation with *dT/dx* = 0 at *x* = ±*L*/2
   * Case 3: Mixed conditions with *dT/dx* = 0 at *x* = -*L*/2 and *T* = 0 at *x* = *L*/2
   
Plot:
 * Temperature vs. time at *x* = 0 for each boundary case, labeling each case.
 * *T*(*x*, *t*) with position on the *x*-axis, time on the *y*-axis, and temperature shown as color (plot for one boundary condition).  

