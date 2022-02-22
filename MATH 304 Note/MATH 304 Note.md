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
### triangular matrix
- inverse of lower (upper) triangular matrix is still lower (upper) triangular
- multiplication of lower (upper) triangular matrix is still lower (upper) triangular
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
\min_{\vec\alpha}\lVert A\vec\alpha-\vec b\rVert_F^2
$$
## minimax optimization (Chebyshev approximation)
minimize the maximum absolute error
$$
\min_{\vec\alpha}\max_i|a^i\vec\alpha-b_i|
$$
or minimize the maximum relative error$$
\min_{\vec\alpha}\max_i\left|\frac{a^i\vec\alpha-b_i}{b_i}\right|
$$
### solving minimax
convert to $$
\min_{\vec\alpha,t}t
$$
such that $|a^i\vec\alpha-b_i|≤t\quad\forall\ i$
## over-fitting
### regularization
*simple* model is better
$|\vec\alpha|$ should be small
$$
\min_{\vec\alpha}\lVert A\vec\alpha-\vec b\rVert_F^2+\lambda\lVert\vec\alpha\rVert_F^2
$$

# convex
## mathematical optimization
minimize objective (/target/ cost) function $f_0(x)$
subjected to constraint function $f_i(x)≤b_i\quad\forall\ i=1,\cdots,m$
find **optimal solution** $x^*$
## convex optimization
$$
f_i(\alpha x+\beta y)≤\alpha f_i(x)+\beta f_i(y)
\quad\text{if }\alpha+\beta=1,\alpha,\beta≥0
$$
### positive semi-definite (PSD) matrix
positive semi-definite matrix $A_Q$ (sometimes denoted as $A_Q\succeq 0$)
$$
\forall\ \vec x,\ \vec x^TA_Q\vec x≥0
$$
#### convert to symmetric matrix
$$
\vec x^TA_Q\vec x=\vec x^T\left(\frac{A_Q+A_Q^T}{2}\right)\vec x
$$
where $\frac{A_Q+A_Q^T}{2}$ is always symmetric
we consider $A_Q$ symmetric from now on
#### eigenvalue decomposition
eigenvalue $\lambda_i$ of $A_Q$
$$
A_Q\succeq0\Leftrightarrow\forall\ i,\ \lambda_i≥0
$$
let $\lambda_1≥\cdots≥\lambda_n$, eigenvector $V_i$
$A_Q$ symmetric $\Rightarrow\lambda_i$ real, $V$ orthonormal
$$
A_QV_i=\lambda_iV_i\\[12pt]
\Sigma=\begin{bmatrix}
    \lambda_1&&\\
    &\ddots&\\
    &&\lambda_n
\end{bmatrix}\\[12pt]
\Rightarrow A_Q=V\Sigma V^T\\
$$
#### non-negative quadratic function
$$
\forall\ X,\ X^TA_QX+B_Q^TX+C_Q≥0\\[12pt]
\Rightarrow A_Q\succeq0
$$
- quadratic coefficient for least squares error function is positive semi-definite
- the function is convex $\Leftrightarrow$ symmetric $A_Q\succeq0$
## convex function
$$
\forall\ \vec x_1,\vec x_2,\ 0≤\alpha≤1,\ 
f[\alpha\vec x_1+(1-\alpha)\vec x_2]≤\alpha f(\vec x_1)+(1-\alpha)f(\vec x_2)
$$
- concave function
negative convex function
### Jensen's inequality
if $f$ is convex
$$
\forall\ 0≤\theta≤1\quad f(\theta x+(1-\theta)y)≤\theta f(x)+(1-\theta)f(y)
$$
- extension
$$
f(E[z])≤E[f(z)]
$$
### first-order condition
differentiable $f$ is convex
$$
\Leftrightarrow f(y)≥f(x)+\nabla f(x)^T(y-x)
$$
- first-order approximation of $f$ is global under-estimator
- $x$ is a global minimizer of the function $f$ when $\nabla f(x)=0,f(y)≥f(x)$
### second-order sufficient condition
$$
\forall\ \vec x,\nabla^2f(\vec x)\succeq0
$$
Hessian matrix is positive semi-definite $\Rightarrow f$ is convex
#### Hessian matrix
$$
\nabla^2f(\vec x)
=\begin{bmatrix}
    \displaystyle\frac{\partial^2f}{\partial x_1^2}&\displaystyle\frac{\partial^2f}{\partial x_1\partial x_2}&\cdots\\[12pt]
    \displaystyle\frac{\partial^2f}{\partial x_1\partial x_2}&\displaystyle\frac{\partial^2f}{\partial x_2^2}&\cdots\\[12pt]
    \vdots&\vdots&\ddots
\end{bmatrix}
$$
### prove convex function
- definition
- second-order sufficient condition $\nabla^2 f≥0$

if neither work, then first-order condition
### some convex function
- one-dimensional
$$
bx+c\quad e^{ax}\quad x^a\ (a<0\ or\ a>1,x>0)\quad x\log x\ (x>0)
$$
- higher dimension
$$
B^TX+C\quad\lVert X\rVert\quad\max(X_1,\cdots,X_N)\quad\log(e^{X_1}+\cdots+d^{X_N})
$$
### operation that preserve convexity
$$
\alpha f_1\ (\alpha≥0)\quad f_1+f_2\quad f_1(Ax+b)
$$
are convex for $f_1,f_2$ convex
## constrained nonlinear optimization
$$
\min_Xf(X)\\
\text{such that}\left\{\begin{array}{c}
    g_1(X)≤0\\
    g_2(X)≤0\\
    \vdots
\end{array}\right.
$$
### feasible set
set of all feasible point
- feasible point
point $X$ satisfy
$$
\left\{\begin{array}{c}
    g_1(X)≤0\\
    g_2(X)≤0\\
    \vdots
\end{array}\right.
$$
- constraint set
union of domain and feasible set
- feasible optimization
feasible set is non-empty
### convex set
set $D$
$$
\forall\ X_1,X_2\in D,0≤\alpha≤1,\quad\alpha X_1+(1-\alpha)X_2\in D
$$
all point between any two point in the set are in the set

- convexity is preserved under intersection
#### example convex set
- hyperplane $\{X|B^TX=C\}$
- polytope $\{X|B^TX≤C\}$
- ball $\lVert X\rVert_2≤C$
- positive semi-definite matrix $\{X|X\in\R^{N\times C},X=X^T,X≥0\}$
#### $\alpha$-sublevel set
for $f(X)$, $\alpha$-sublevel set
$$
\{X|f(X)≤\alpha\}
$$
- $f(X)$ is convex $\Rightarrow$ set convex
### convex optimization
minimization of a convex cost function over a convex constraint set
$$
\min_Xf(X)\\
\text{such that}\left\{\begin{array}{c}
    g_1(X)≤0\\
    g_2(X)≤0\\
    \vdots
\end{array}\right.
$$
where the constrain set is convex
- $g_i(X)$ are convex $\Rightarrow$ constrain set is convex
- concave maximization
reverse
#### linear programming
in **duality**

## duality
standard form for constrained nonlinear optimization
$$
\min_Xf(X)\\
\begin{align*}
    \text{such that}\ g_m(X)≤0\ (m=1,\cdots,M)\\
    h_n(X)=0\ (n=1,\cdots,N)
\end{align*}
$$
### Lagrangian
$$
L(X,U,V)=f(X)+\sum_{m=1}^Mu_mg_m(X)+\sum_{n=1}^Nv_nh_n(X)
$$
is linearly dependent of $U,V$
### Lagrange dual function
$$
d(U,V)=\inf_XL(X,U,V)
$$
is concave
### dual problem
$$
\max_{U,V}d(U,V)
$$
such that $U\succeq0$
#### weak duality
#### (lower bound property)
$$
f(X^*)≥d(U^*,V^*)
$$
- $X^*$ is primal optimum
- $U^*,V^*$ are dual optimum
- weak duality hold for any optimization problem
##### optimal duality gap
$$
f(X^*)-d(U^*,V^*)≥0
$$
- $d(U^*,V^*)=\infty\Rightarrow f(X^*)=\infty$, primal problem infeasible
- $f(X^*)=-\infty\Rightarrow d(U^*,V^*)=-\infty$, primal problem unbounded below
#### strong duality
$$
f(X^*)-d(U^*,V^*)=0
$$
##### complementary slackness
- $$
\sum_{m=1}^Mu_mg_m(X)=0\\[12pt]
\sum_{n=1}^Nv_nh_n(X)=0
$$
- active constraint $u_m^*>0\Rightarrow g_m(X^*)=0$
- inactive constraint $g_m(X^*)<0\Rightarrow u_m^*=0$
##### Karush-Kuhn-Tucker (KKT) condition
- $g_m(X^*)≤0\ (m=1,\cdots,M)$
- $h_n(X^*)=0\ (n=1,\cdots,N)$
- $U^*\succeq0$
- $u^*g_m(X^*)=0\ (m=1,\cdots,M)$
- $\nabla f(X^*)+\sum_{m=1}^Mu_m\nabla g_m(X^*)+\sum_{n=1}^Nv_n\nabla h_n(X^*)=0$
##### constraint qualification
condition that guarantee strong duality in convex problem
- Slater's constrain qualification
  - strictly feasible$$
g_m(X)<0\quad(m=1,\cdots,M)\\
AX=B
$$
- KKT condition for convex problem
# unconstrained optimization
## gradient method
### one-dimensional
step size $\lambda^{(k)}>0$
$$
\Delta x^{(k)}=x^{(k+1)}-x^{(k)}=-\lambda^{(k)}\left.\frac{\mathrm{d}f}{\mathrm{d}x}\right|_{x^{(k)}}\\[12pt]
f[x^{(k+1)}]\approx f[x^{(k)}]-\lambda^{(k)}\left.\frac{\mathrm{d}f}{\mathrm{d}x}\right|_{x^{(k)}}^2
$$
### N-dimensional
$$
X^{(k+1)}=X^{(k)}-\lambda^{(k)}\cdot\nabla f[X^{(k)}]
$$
### line search
optimize step size
$$
\min_{\lambda^{(k)}}f(X^{(k)}-\lambda^{(k)}\nabla f[X^{(k)}])
$$
#### backtracking line search
example
while $f(X^{(k)}-\lambda^{(k)}\nabla f(X^{(k)}))>\alpha\lambda^{(k)}\nabla f^2(x^{(k)})$, $\lambda^{(k)}\times=\beta$
$(0<\alpha<0.5,0<\beta<1,\lambda^{(0)}=1)$
## Newton method
### one-dimensional
$$
\Delta x^{(k)}=x^{(k+1)}-x^{(k)}=-\frac{\left.\frac{\mathrm{d}f}{\mathrm{d}x}\right|_{x^{(k)}}}{\left.\frac{\mathrm{d}^2f}{\mathrm{d}x^2}\right|_{x^{(k)}}}\\[12pt]
$$
### N-dimensional
$$
X^{(k+1)}=X^{(k)}-\left(\nabla^2f(X^{(k)})\right)^{-1}\nabla f(X^{(k)})\\[12pt]
f[x^{(k+1)}]\approx f[x^{(k)}]-\frac{\lambda^2}{2}
$$
where $\lambda^2=\left(\nabla f(X^{(k)})\right)^T\left(\nabla^2f(X^{(k)})\right)^{-1}\nabla f(X^{(k)})$

# constrained optimization
$$
\min_Xf(X)\\[12pt]
\text{such that }\begin{cases}
    g_1(X)≤0\\
    \vdots
\end{cases}
$$
## Lagrange multiplier
for equality constraint
$$
\min_Xf(X)\\
\text{such that }g_i(X)=0\quad(i=1,\cdots,p)
$$
$\exists$ Lagrange multiplier $\lambda_1,\cdots,\lambda_p$
$$
\nabla f(X^*)+\sum_{i=1}^p\lambda_i\nabla g_i(X^*)=0
$$
## linear equality constraint
$$
\min_Xf(X)\\
\text{such that }AX=B
$$
### eliminate linear equality constraint
$$
AX=B\Rightarrow X=FZ+D
$$
where $A\in\R^{p\times n},B\in\R^{p\times 1},F\in\R^{n\times(n-p)},Z\in\R^{(n-p)\times 1}$
- $D$ is a particular solution
- $F$ is a basis of $\text{Nul}A$
- $Z$ is any value
#### subspace reduction
transform the linear equality constraint to
$$
\min_Zf(FZ+D)
$$
### optimality for linear constraint
$$
\nabla g_i(X)=A(i,:)^T\\[12pt]
\Rightarrow\nabla f(X^*)+A^TV=0
$$
### linear equality constrained quadratic programming
$$
\min_X f(X)=\frac{1}{2}X^TQX+R^TX+C\\[12pt]
\text{such that }AX=B
$$
$\nabla f(X)=QX+R$
#### optimality condition for quadratic programming
$$
\begin{bmatrix}
    Q&A^T\\A&0
\end{bmatrix}
\begin{bmatrix}
    X^*\\V
\end{bmatrix}
=\begin{bmatrix}
    -R\\B
\end{bmatrix}
$$
where $X^*$ is the optimal solution
$V$ is the vector of Lagrange multiplier
##### nonlinear optimization given linear constraint
exchange the term in optimality condition for quadratic programming
$Q\rightarrow\nabla^2f[X^{(k)}]$
$X^*\rightarrow\Delta X$
$R\rightarrow\nabla f[X^{(k)}]$
$B\rightarrow B-AX^{(k)}$
update $X^{(k+1)}$ with $\Delta X$
- even if $X^{(0)}$ is not feasible, after one iteration, $X^{(1)}$ is feasible

---