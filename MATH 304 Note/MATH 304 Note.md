## norm
- $\lVert A\rVert\geq0,=0$ iff $A=\vec0$
- $\lVert\alpha…\rVert=|\alpha|\,\lVert…\rVert$
- $\lVert A+B\rVert\leq\lVert A\rVert+\lVert B\rVert$
- $\lVert A\rVert\lVert B\rVert\geq\lVert AB\rVert$
- $\lVert A\vec x\rVert\leq\lVert A\rVert\lVert\vec x\rVert$
### common norm
#### vector norm
Inf-norm $\lVert X\rVert_\infty=\max_{1\leq i\leq n}|x_i|$
1-norm $\lVert X\rVert_1=\sum_{i=1}^n|x_i|$
F-norm $\lVert X\rVert_e=\sqrt{\sum_{i=1}^nx_i^2}$
Lp-norm $\lVert X\rVert_p=\left(\sum_{i=1}^n|x_i|^p\right)^{\frac{1}{p}}$
#### matrix norm
Inf-norm—max row sum
$$
\lVert A\rVert_\infty=\max_{1\leq i\leq n}\sum_{j=1}^n|a_{ij}|
$$
1-norm—max column sum
$$
\lVert A\rVert_1=\max_{1\leq j\leq n}\sum_{i=1}^n|a_{ij}|
$$
F-norm—Frobenius (/Euclidean) norm
$$
\lVert A\rVert_F=\sqrt{\sum_{i=1}^n\sum_{j=1}^na_{ij}^2}
$$

## Gradient calculation
$$
\frac{\partial\mathbf{\beta}^T\mathbf{x}}{\partial \mathbf{x}}=\mathbf{\beta}
\\[12pt]\frac{\partial\mathbf{x}^T\mathbf{x}}{\partial\mathbf{x}}=2\mathbf{x}
\\[12pt]\frac{\partial\mathbf{x}^TA\mathbf{x}}{\partial\mathbf{x}}=(A+A^T)\mathbf{x}
$$

# solve linear system
## Gauss elimination
make it upper-triangular
- forward elimination
- backward substitution
### pivoting
- partial pivoting—largest in column below
- complete pivoting—largest in column and row
### ill-condition
determinant is close to $0$
big impact from numerical noise
### condition number
quantitatively measure singularity
$$
k(A)=\lVert A\rVert\cdot\lVert A^{-1}\rVert
$$
### determinant
product of diagonal element of upper triangular matrix
## Gauss-Jordan elimination
make it identity matrix
### geometric understanding
preserve intersection and rotate line
### matrix inverse
apply Gauss-Jordan elimination to $[A\ I]$
## LU decomposition
initiative—reuse result to calculate with different $\vec b$
$$
A=LU
\\[12pt]
\Rightarrow L\vec{d}=\vec{b},\ U\vec{x}=\vec{d}
$$
where $A$ invertible
$$
\Rightarrow d_i=b_i-\sum_{j=1}^{i-1}a_{ij}d_j
\\[12pt]
x_i=\frac{d_i-\sum_{j=i+1}^na_{ij}x_j}{a_{ii}}
$$
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

# optimization
## minimize L2 norm
$$
\min_\alpha\lVert A\alpha-\vec b\rVert_F^2
$$
## minimax optimization
minimize the maximum absolute error
$$
\min_\alpha\max_i|a^i\alpha-b_i|
$$
or minimize the maximum relative error$$
\min_\alpha\max_i\left|\frac{a^i\alpha-b_i}{b_i}\right|
$$
### solving minimax
convert to $$
\min_{\alpha,t}t
$$
such that $|a^i\alpha-b_i|≤t\quad\forall\ i$
## over-fitting
### regularization
*simple* model is better
$|\alpha|$ should be small
$$
\min_\alpha\lVert A\alpha-\vec b\rVert_F^2+\lambda\lVert\alpha\rVert_F^2
$$