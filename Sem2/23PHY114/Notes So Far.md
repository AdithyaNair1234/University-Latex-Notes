$m = \int_0^l \rho A(s) ds$
$m = \rho A(x)\int_0^{x_l}{1+y'^2}dx$
# Centre Of Mass
$\vec{r} = \frac{\int_0^l \vec{r(s)}A(s) ds}{\int_0^l A(s) ds}$
$= \frac{\int_0^{x_l}\vec{r(x) \rho A(x) \sqrt{1+y'^2}dx}}{\int_0^{x_l} \rho A(x) \sqrt{1+y'^2}}$

# Moment Of Inertia
$$
I_{ZZ}^O = \int |\vec{r}|^2 dm \\
= \int |\vec{r(s)}| \rho A(s) ds \\
=\int_0^{x_l}|\vec{r(x)}|^2 \rho A(x) \sqrt{1+y'^2} dx \\
$$
$$
I_{xy}^O = -\int \int \int (xy) \rho (dx dy dz)
$$
$$
dV = A(s) ds = dA\rightarrow(dx.dy).d
$$
$$ \begin{bmatrix} I_{xx} & I_{xy} & I_{xz} \\ I_{yx} & I_{yy} & I_{yz} \\ I_{zx} & I_{zy} & I_{zz} \end{bmatrix} $$ # Product Of Inertia $$ I_{xy}^O = -\int \int \int (xy) \rho (dx dy dz)$$

# Moment Of Area
## First Moment
$$
\overline{I}_x = \int \int y dA
$$
$$
\overline{I}_y = \int \int x dA
$$
## Second Moment
$$
\overline{I}_x = \int \int y^2 dA
$$
$$
\overline{I}_y = \int \int x^2 dA
$$

The moment of inertia is used to help find the "resistance" to the force, given a specific axis or direction.
**Defn-** How the geometry is distributed about an axis of interest.
# Resisting Force And Moments From Supports

There are three kinds of supports - 
1. Pin/Hinge - Fixes linear motion but leaves rotation free
2. Roller - Fixes rotation but leaves motion free
3. Clamp - Fixes both linear and rotational motion.
---
Take this case, with a bunch of forces being applied to the given load.

![[Drawing 2024-02-15 11.20.39.excalidraw.md]]

What we need to do is find this:
1. The resultant force (maximum)
2. Support reaction force and moment
3. Moment on the object (max)
---
The way to approach problems as always is:
1. Free-Body Diagram first (5 marks)
2. Assuming $\Sigma\vec{f} = \vec{0}$, because the object has no acceleration currently, when it is fixed.
3. $\Sigma \vec{M}_{/O} = \vec{0}$
4. The point at which the resultant force is applied is found by
$$\frac{\int |r| dm}{\int dm}$$
---
So in this case,
$(-R_x)\hat{i} + (-200+300-400-150 + R_{y})\hat{j}= \vec{0}$
$R_x = 0$
$R_y = 450N$
The resultant force on this structure is $450 N$
The next step is to find where the resultant force is acting on the structure -
![[Drawing 2024-02-15 11.20.40.excalidraw]]
$\Sigma M_o = 0$
$-M_o + 2000 - 450d = 0$

To find d, we replace $450d$ with the summation of the individiual forces of each of the forces, with the corresponding distance from the hinge.
$-M_o = -200 + 600 - 525 - 2400 + 2000$
$M_o = -525\hat{k}$
$-525 = 2000-450d$
$d = 5.61m$
![[Drawing 2024-02-15 12.37.21.excalidraw]]
The next three things to be found as an engineer -
4. Stress
5. Strain
6. Maximum allowed stress, then what would the dimensions be?
Being more specific,
$$
d = 2m,
l = 10m, 
R = 1500N, 
\Delta l = 0.01
$$
This pillar is circular in its cross-section.

$\sigma_{yy} = \frac{P}{A_c}$

This is known as engineering stress, this stress does not account for the slight deformation that takes place when the force is applied.

True stress is...

$\sigma_{yy} = \frac{P}{A_d}$

The rate at which the object bulges or thins out is called the **Poisson Ratio**.

$\nu,\kappa, E$ - representations for Poisson Ratio
# For Uni-axial Deformation

$\sigma_{yy} = E \epsilon_{yy}$
$\frac{F}{A}=E \frac{\Delta l}{l}$
$F = (\frac{EA}{l})\Delta l$
$F = k\Delta x$

# Another Case



# Finite Element Method - Computing Basis
The aim of this method is to reduce a complex system down to this equation.

$$[F] = [k] [\Delta x],\text{where k is the stiffness matrix.}$$



# We are going  to be using subroutines.
The final procedure is to reduce any structure down to a spring with a stiffness K, this global stiffness matrix is found by 

$$\vec{f} = K \vec{u}$$

We break down the structure into simpler parts.

$$\begin{bmatrix}
f_1 \\
f_2 \\
\end{bmatrix} 
=
\begin{bmatrix}k_1 & -k_1 \\
-k_1 & k_1
\end{bmatrix}
\begin{bmatrix}
u_1 \\
u_2 \\
\end{bmatrix}$$

$$\begin{bmatrix}
f_2 \\
f_3 \\
\end{bmatrix} 
=
\begin{bmatrix}k_1 & -k_1 \\
-k_2 & k_2
\end{bmatrix}
\begin{bmatrix}
u_2\\
u_3 \\
\end{bmatrix}$$


$$\begin{bmatrix}
f_3 \\
f_4
\end{bmatrix} 
=
\begin{bmatrix}k_3 -k_3 \\
-k_3 & k_3
\end{bmatrix}
\begin{bmatrix}
u_3\\
u_4 \\
\end{bmatrix}$$

Then we assemble the final matrix based on this.

$$
\begin{bmatrix}
f_1 \\
f_2 \\
f_3 \\
f_4 \\
\end{bmatrix}
= 
\begin{bmatrix}
k_1 & -k_1 & 0 & 0 \\
-k_1 & k_1+k_2 & -k_2 0 \\
0 & -k_2 & k_2 +k_3 & -k_3 \\
0 & 0 & -k_3 & k_3
\end{bmatrix}
\begin{bmatrix}
u_1 \\
u_2 \\
u_3 \\
u_4 \\
\end{bmatrix}
$$
We know that $f_1(R_y)$ is going to be external, which we don't know.
We also know that $u_1$ is also 0.
This means that we can assume $u_1$ to be zero.
$$
\begin{bmatrix}
R_y \\
0 \\
0 \\
P \\
\end{bmatrix}
= 
\begin{bmatrix}
\cancel{k_1} & \cancel{-k_1} & \cancel{0} & \cancel{0} \\
\cancel{-k_1} & k_1+k_2 & -k_2 &  0 \\
\cancel{0} & -k_2 & k_2 +k_3 & -k_3 \\
\cancel{0} & 0 & -k_3 & k_3
\end{bmatrix}
\begin{bmatrix}
0 \\
u_2 \\
u_3 \\
u_4 \\
\end{bmatrix}
$$

(This is in reference to a diagram that was drawn in class)

$n_{elements} = 3$
$n_{nodes} = n_{elements} + 1$
The size of K is now defined
$K_{n_{nodes}\times n_{nodes}}$

----
![[Drawing 2024-02-26 11.57.53.excalidraw]]

Take this structure.

The displacement from 1 to 2, is along both $\hat{i}$ and $\hat{j}$ and all the displacements for $u_l$ and $u_r$ are 2-dimensional rather than along one of the Cartesian bases.
$$
K_a d_a = f_a
$$
$$
\begin{bmatrix}
k & 0 & -k & 0 \\
0 & 0 & 0 & 0 \\
-k & 0 & k & 0 \\
0 & 0 & 0 & 0 \
\end{bmatrix}
\begin{bmatrix}
u_l \\
v_l\\
u_r \\
v_r \\
\end{bmatrix}
$$


The objective is to have a stiffness matrix for a b and c. We then rotate the matrix to be fit along the Cartesian bases.

>[!faq] Quick Recap
>To rotate a vector $\vec{b}$, we multiply it by the rotation matrix R.
>To rotate a matrix $M$, we perform the operation $RMR^T$

So the equation becomes
$$
[R][f] = [R][K_a][R]^T[R][d_a]
$$
$$
[f] = [R][K_a][d_a]
$$
$$
[f_{Cartesian}] = K_{Cartesian} {d_{Cartesian}}
$$

## Subroutines for the finite element method.

1. Function that finds local K aftter taking all the inputs for the structure.
	1. $Function K_e = Stiffness(E,A,l,\theta)$
	2. $k = \frac{EA}{l}$
	3. 
```matlab
function kl = localstiffnessCreator(E,A,l,theta)
	k = E*A/l;
	R = [cos(theta) -sin(theta);sin(theta) cos(theta)];
	R4 = [R zeros(2,2);zeros(2,2) R];
	kl = [k 0 -k 0;0 0 0 0; -k 0 k 0; 0 0 0 0];
	ke = R4*kl*R4';
```

2.. Assembly into global Stiffness matrix K
1. $d_G = \frac{f_g}{K_g}$ 

We know that,

$$
\frac{d}{dx} (EA\frac{du}{dx}) = 0
$$
$$
EA \frac{d^2u}{dx^2} = 0 \text{(This is known as a strong form.)}
$$
If the differential equation is of order 3, then we need 4 solutions.
$$
U(x) = c_1 + c_2 x + c_3 x^2
$$

In finite element method, what we use is a **weak form.**


$$
\int_0^l q(x) (EA \frac{d^2u}{dx^2}dx) = 0 
$$
---
$$
U = \underline{H}^T \underline{U}
$$
$$
q(x) = \begin{bmatrix}H_l(x) H_r(x)\end{bmatrix}
$$

This entire method is an approximation. Here, the equation, 

$$
f = k \Delta x
$$
is assuming that the displacement is directly proportional to the force. Which is not necessarily true.

# Bending Deformation
## Recall
$\sigma_{xx} = E \epsilon_{xx}$
$f_x = \int \int \sigma_{xx} dA$
$I^{1}_{zz} = \int \int y dA$
$I_{zz} = \int \int y^2 dA$
$\tan \theta = \frac{dv}{dx}$
$\frac{1}{\rho_c} = \frac{v''}{1+v'^2}^{\frac{3}{2}}$

We learned, axial deformation,
Now we will study bending deformation.

The things we studied till now, we have trusses.

The intuition for this is that when an object is being bent, the outer part is being stretched, the inner part is being compressed.

![[Drawing 2024-03-07 14.21.05.excalidraw]]

Taking this assumption, there has to be a point at which the object does not bend or compress. This line is known as the **elastic line,** where no tension or compression exists on this.

If there is a tension on the object, then the object is being stretched, inward forces create compression, A force that moves inward.

In between there is a line at which zero compression and zero tension occurs.

This means that the **Bending** stress can be calculated in the same way as seen in [[Notes So Far#Recall]] 

When the object is being bent, it is still held in place, which means the acceleration is zero, and yet the forces act as a couple, which means that when bending occurs there is always a moment. 

Bending does not work uniformly, and changes with change in  position.

We can take the angle of bending to be a function of the position, $\theta(x)$ .

The first step is in finding the Free Body Diagram.

![[Drawing 2024-03-07 14.31.30.excalidraw]]

Taking this example of a bar fixed to the wall, and examining small components of the bar and examining the forces at work on the component, we get a Tension, Moment and Stress.

Taking things along the $\hat{i}$ direction, we get
$$
-T + T + \Delta T = 0
$$
 What does this tell us? Tension is constant. 

While $-S + S + \Delta S - w\Delta x = 0$

$$
\frac{dS}{dx} = \lim_{\Delta x \rightarrow 0} \frac{\Delta S}{\Delta x} = w(x)
$$
We get an expression for the effects of the distributed force on the shear force of an individual object.

Looking at the angular momentum balance,

$$
\sum M_{/P} = 0
$$
$$
-M + (M + \Delta M) \hat{k} + (-\Delta x \hat{i} \times(-T\hat{i} - S \hat{j}) + (\frac{-\Delta x}{2} \hat{i} \times (-w(x) \Delta x \hat{j}))
$$
$$
\implies \frac{\Delta M }{\Delta x} + S - w\frac{\Delta x}{2} = 0
$$
Taking the limit on the equations, we get,
$$
\frac{dM}{dx} + S = 0
$$

Thus we get,
$$
\frac{dT}{dx} = 0
$$
$$
\frac{dS}{dx} = w(x)
$$
$$
\frac{dM}{dx} = -S
$$
Now we get to the Finite Element Method for bending.

>[!faq] Reference - Schaum's Finite Element Analysis, Chapter 4


Now for this part, we are taking a very general case, 

This is the case for pure bending, when the object experiences no other form of deformation.

$$
M = EI \frac{d \theta}{dx}
$$
$$
= EI \frac{d^2 v}{dx^2}, \theta = \frac{dv}{dx}
$$
When $\theta \rightarrow 0$,

$$
\tan \theta \approxeq \theta
$$


Now that we have this, what we solve becomes,
From, 
$$
\frac{dM}{dt} = -S
$$
Differentiating we get,  

$$
\frac{d^2}{dx^2}(EI \frac{d^2v}{dx^2}) = \frac{dS}{dx} = - w(x)
$$
Yet again, this is the strong form.

The weak form is 

$$
\int q(x) (\frac{d^2}{dx^2} (EI \frac{d^2 v}{dx^2} + w(x)) dx = 0
$$

Performing integration by parts,

$$
[q(x) \frac{d}{dx}(EI \frac{d^2v}{dx^2})]_0^l - \int_0^l q'(x) (EIv'')' dx + \int_0^l q w(x) dx
$$
$$
[\int q''EIv'' dx]_{\text{ This becomes the term k}} + \int qw dx - [q(EIV'')' - (q'EIV'')]^l_0
$$
If $v''$ is a constant
$$
v = c_1 + c_2x + c_3x^2
$$ Substituting $(EIV'')'$ as -S,
$$
[\int q''EIv'' dx]_{\text{ This becomes the term k}} + \int qw dx - [q(S(x) - (q'M(x)]^l_0
$$

