**To recap,**
We were looking at the double slit experiment. That's a peek into quantum mechanics and the fact that measurement of state changes the state of the experiment.

We're trying to get from 

$$
\text{quantum mechanics} \rightarrow \text{bonding}, \text{And using } \text{structure of materials} \rightarrow \text{properties}
$$
These same ideas will be covered in Quantum Computing.

![[Drawing 2024-02-16 14.36.14.excalidraw]]

#### The Components 
- State of the system,
- Measurement of the state of the system $\rightarrow$ Operator
- Outcome of the measurement $\rightarrow$ Inner product e.g. dot product.
# Notation
- State - $\ket{A}$ 
	- Encodes all the information about the particle
- Measurement Operator - $\hat{A}$
---
Going back to the electron gun experiment
The two slits $A_1$ and $A_2$ are denoted by $\ket{A_1}$ and $\ket{A_2}$ which c

Under the conjecture that the electrons are waves, 

The state of the entire system would be,
$\ket{A_1}$ + $\ket{A_2}$ , before measurement

There are **two** measurements in the experiment, once with the light source and then with the detector.

Let's take the measurement to be $\hat{A}$, which includes both the light source and the detector that beeps.

$\hat{A}(\ket{A_1} + \ket{A_2})$

---
Going back to our familiar world (3-dimensional space.)

Taking an example, a 2d plane.

Some vector $\underline{v} = v_1 \hat{e_1} + v_2 \hat{e_2}$, where $\hat{e_1} \perp \hat{e_2}$

Take another orthogonal basis $\hat{e_1}'$ and $\hat{e_2}'$

Then, $\underline{v} = v_1' \hat{e_1}' + v_2' \hat{e_2}'$

 In linear algebra,
 $A\vec{x} = b$

Consider a general vector $\vec{w}$

In which,

$A\vec{v} = \vec{w}$

The vector is going to be denoted as $\ket{v}$, and $\hat{O}$ as the operator.

$\hat{O}\ket{v} = \ket{w}$

To find how much of $\vec{v}$ is in $\vec{w}$, we take the projection of v onto w.

---
## Continued On The Next Day
>[!faq] Notation
>This notation is known as "Paul Dirac" notation

$\ket{v} = v_1 \ket{\hat{e_1}}+ v_2 \ket{\hat{e_2}}$

For the notation, when $\bra{v}$ is written, the basis is transformed to its complex conjugate.

$\bra{v} = v_1^* \bra{e_1} + v_2^*\bra{e_2}$, where $v_1^*$ and $v_2^*$ is the corresponding complex conjugate

Performing the dot product is denoted by $\braket{v|w} = (v_1^*\bra{\hat{e_1}}+ v_2^*\bra{\hat{e_2}})(w_1 \ket{\hat{e_1}} + w_2 \ket{\hat{e_2}})$

$\bra{\hat{e_1}}\ket{\hat{e_2}}=0$, $\bra{\hat{e_1}}\ket{\hat{e_2}}=1$

$v_1^*w_1 + v_2^*w_2$

>[!faq] Reference
>Leonard Susskind, a lecturer at Stanford.
>He delivered a lecture series called "The Theoretical Minimum", on the minimum amount of knowledge required to understand the mechanisms behind physics.

Coming back to the core of what we're trying to solve, about state and measurement.

$$\hat{O}\vec{v} = \vec{w}$$

We learned earlier this semester that there are some vectors, that transformations do not affect. [[Class Notes.pdf]](Eigenvectors and eigenvalues.)

Take two such vectors $v_1$ and $v_2$,

$\hat{O}\vec{v_1} = \lambda_1 \vec{v_1}$ 
$\hat{O}\vec{v_2} = \lambda_1 \vec{v_2}$

$\hat{O}\ket{v_1} = \lambda_1 \ket{v_1}$
$\hat{O}\ket{v_2} = \lambda_2\ket{v_2}$

$\ket{v} = v_1' \ket{v^{(1)}}+v_2' \ket{v^{(2)}}$
Reminder, this is the equation we're working in.
$\hat{O}\ket{v}=\ket{w}$

Recall the double slit  experiment,
![[Drawing 2024-02-16 14.36.14.excalidraw]]

Going back to the electron gun experiment
The two slits $A_1$ and $A_2$ are denoted by $\ket{A_1}$ and $\ket{A_2}$,

Under the conjecture that the electrons are waves, 

The state of the entire system would be,
$\ket{A_1}$ + $\ket{A_2}$ , before measurement

There are **two** measurements in the experiment, once with the light source and then with the detector.

Let's take the measurement to be $\hat{A}$, which includes both the light source and the detector that beeps.

$\hat{A}(\ket{A_1} + \ket{A_2}) = \{\ket{A_1}, \ket{A_2}\}$

It becomes a bit apparent that $\ket{A_1}$and $\ket{A_2}$ are eigenvectors.

Taking the vector $\ket{\alpha}$

$\ket{\alpha} = \ket{A_1}+\ket{A_2}$

>The state of a system is analogous to the eigenvectors of the operator.

Then,

$\hat{A}\ket{\alpha} = \{\ket{A_1}, \ket{A_2}\}$

$\hat{A}(\ket{A_1} + \ket{A_2}) = \hat{A}\ket{A_1} + \hat{A} \ket{A_2}\}$
$=a_1 \ket{A_1} + a_2 \ket{A_2}$

Remember that,
$\ket{\alpha} = \ket{A_1} + \ket{A_2}$
$\bra{\alpha} = \bra{A_1}+\bra{A_2}$

$\braket{\alpha|A|\alpha}$

