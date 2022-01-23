## norm
- $\geq0$
- $\lVert\alpha…\rVert=|\alpha|\,\lVert…\rVert$
- $\lVert A+B\rVert\leq\lVert A\rVert+\lVert B\rVert$
- $\lVert A\rVert\lVert B\rVert\geq\lVert AB\rVert$
### common norm
Inf-norm $\lVert X\rVert_\infty=\max_{1\leq i\leq n}|x_i|$
1-norm $\lVert X\rVert_1=\sum_{i=1}^n|x_i|$
F-norm $\lVert X\rVert_e=\sqrt{\sum_{i=1}^nx_i^2}$
Lp-norm $\lVert X\rVert_p=\left(\sum_{i=1}^n|x_i|^p\right)^{\frac{1}{p}}$

## Gradient calculation
$$
\frac{\partial\mathbf{\beta}^T\mathbf{x}}{\partial \mathbf{x}}=\mathbf{\beta}
\\[12pt]\frac{\partial\mathbf{x}^T\mathbf{x}}{\partial\mathbf{x}}=2\mathbf{x}
\\[12pt]\frac{\partial\mathbf{x}^TA\mathbf{x}}{\partial\mathbf{x}}=(A+A^T)\mathbf{x}
$$

# solve linear system
## Gauss elimination
make it upper-triangular
## Gauss-Jordan elimination
make it identity matrix
## LU decomposition
$$
A=LU
\\[12pt]
\Rightarrow L\vec{d}=\vec{b},\ U\vec{x}=\vec{d}
$$
where $A$ invertible
### Cholesky decomposition
symmetric and positive definite matrix
$$
A=LL^T
$$
### LDLT transposition
symmetric and positive definite matrix
$$
A=LDL^T
$$

## iteration method
1. initial point
2. update rule
3. stop criterion
### Gauss-Seidel
solve $x_n$ using the other $x$ and replace it
