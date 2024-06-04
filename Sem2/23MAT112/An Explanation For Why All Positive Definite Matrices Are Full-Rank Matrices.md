To refresh,

>[!faq] Definition: Positive Definite Matrices
>A matrix is said to be a positive definite matrix when,
>$\vec{x}^TA\vec{x}>0$, $\forall x \neq 0$

Breaking down this statement, for any vector that is NOT a zero vector, $\vec{x}^TA\vec{x}$ must be greater than zero.

Now, let's take the case where it's not a full rank matrix.

This means that that it has a null space of a dimension (n - r). 

Take any vector in this null space, let's assume that vector to be $\vec{x}$

$\implies A\vec{x} = 0 \text{  (since x lies in the nullspace)}$
$\implies \vec{x}^TA\vec{x} = 0$

Which means, that there's a NON-ZERO vector such that $\vec{x}^TA\vec{x} \ngtr 0$. 

Since the definition states that $\vec{x}^TA\vec{x} > 0$ has to hold true for all vectors $\vec{x}$ except for the zero vector... A matrix that has columns which are linearly dependent cannot satisfy this definition. 

Therefore, only a full rank matrix can satisfy this definition.