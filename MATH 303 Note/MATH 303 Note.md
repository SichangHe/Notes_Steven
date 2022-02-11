# ordinary differential equation ODE
- general form 
$$F(x,y,y',y'',\cdots,y^{(n)})=0$$
## order of differential equation
the order of the highest order derivative
## solution
any function that satisfy the equation
### general solution
collection of all solution
### initial value problem
- initial condition
$$y(x_0)=a_0,y'(x_0)=a_1,\cdots\qquad\text{at }x_0\in I$$

use the general solution and the initial condition

## direction field
$$
y'=f(x,y)
$$

##  solving first-order differential equation
### separable equation
$$
y'=g(x)p(y)
$$
1. consider $p(y)=0$
1. integrate both side
$$
\int \frac{\mathrm{d}y}{p(y)}=\int g(x)\mathrm{d}x
$$

### linear equation
$$
a_1(x)y'+a_0(x)y=b(x)
$$
where $a_1(x),a_0(x),b(x)$ are continuous, $a_1(x)\neq0$
#### standard form
$$
y'+P(x)y=Q(x)
$$
multiply both side to construct chain rule form
$$
\text{let }\mu'(x)=\mu(x)P(x)\quad\Leftarrow \mu(x)=e^{\int P(x)\mathrm{d}x}
\\[12pt]
\Rightarrow y'\mu(x)+y\mu'(x)=(y\mu(x))'=\mu(x)Q(x)
$$
where $\mu(x)$ is the integration factor

## existence and uniqueness theorem
$f(x,y)$ is continuous on $R=[x_0-a,x_0+a]\times[y_0-b,y_0+b]$ and satisfy Lipschitz condition
$$
\Rightarrow\exists\ \delta>0,\quad\begin{cases}
    y'=f(x,y)\\
    y(x_0)=y_0
\end{cases}\text{ has unique solution }y(x)\text{ for }x\in[x_0-\delta,x_0+\delta]
$$
### Lipschitz condition
$$
\exists\ K>0,\quad|f(x,y_1)-f(x,y_2)|\leq K|y_1-y_2|\quad\forall\ (x,y_1),(x,y_2)\in R
\\[12pt]
\Leftarrow?\quad\frac{\partial f}{\partial y}\text{ is continuous (therefore bounded) on closed interval }R
$$
### metric space
1. $d(g,h)\geq0$
2. $d(g,h)=d(h,g)$
3. $d(g,h)\leq d(g,u)+d(u,h)$
can be defined using
$$
\lVert g,h\rVert=\max_{x\in [x_0-\delta,x_0+\delta]}|g(x)-h(x)|
$$
### fixed point
`point` stand for function
#### initial value problem integral form
for $y'=f(x,y)$
let operator $T$:
$$
T[g](x)=y_0+\int_{x_0}^xf(s,g(s))\mathrm{d}s
$$
then
$$
y(x)=T[y](x)\quad\Rightarrow T[y]=y
$$
$\Rightarrow y$ is a fixed point for operator $T$
#### Banach fixed point theorem
$T:X\rightarrow X$ is a **contraction** if
$$
d(T[g],T[h])\leq Kd(g,h)
$$
if $X$ is **complete** metric space and $T:X\rightarrow X$ is a **contraction** then
$T$ has a unique fixed point in $X$
#### Picard iteration
sequence $\{g_n\}$ where
$$
g_{n+1}=T[g_n]
$$
with $g_0(x)=y_0$
$$
\lim_{n\rightarrow\infty}g_n(x)=y(x)
$$

# (smooth) dynamical system
continuous differentiable function $\phi(t,x):\R\times\R\rightarrow\R$
$$
\begin{align*}
    &1.\ \phi(0,x_0)=x_0\quad\forall\ x_0\in\R
    \\[12pt]
    &2.\ \phi(t+s,x_0)=\phi(t,\phi(s,x_0))=\phi(s,\phi(t,x_0))\quad\forall\ t,s,x_0\in\R
\end{align*}
$$
## flow of dynamic system $\phi$
## autonomous equation
$$
x'(t)=f(x)
$$
assume $f$ satisfy condition of existence and uniqueness theorem
### time-shift immunity
if the solution of$$
x'=f(x),x(0)=x_0
$$
is $x_1(t)$
then the solution of$$
x'=f(x),x(t_0)=x_0
$$
is $x_2(t)=x_1(t-t_0)$
### equilibrium
$x_e\in\R$, $f(x_e)=0$
- asymptotically stable
$x$ move towards $x_e$ from both side
$f'(x_e)\leq 0$
- unstable
$x$ move away from $x_e$ from both side
$f'(x_e)\geq 0$
#### phase line
draw the sign graph of $f(x)$
#### linearization
let $\lambda=f'(x_e),y=x-x_e$
$$
y'=\lambda y
\\[12pt]\Rightarrow
y=y_0e^{\lambda t}
$$
- $\lambda>0\Rightarrow$ blow up and unstable
- $\lambda<0\Rightarrow$ shrink down and asymptotically stable
## dynamic system to differential equation
$$
f(x)=\frac{\partial\phi}{\partial t}(0,x)
$$
and convert to initial value problem with autonomous equation

# discrete dynamical system
## map $p:\R\rightarrow\R$
$x_{k+1}=p(x_k)\quad\Rightarrow x_{k+t}=p^k(x_t)$
### fixed point
$p(x_0)=x_0$
## invertible $p$
$x_{k-1}=p^{-1}(x_k)$
## fixed point
not change when apply $p$
$$
p(x)=x
$$
### stability
$$
q(y)=\lambda y
\\[12pt]
\lambda=p'(x_0)
$$
- unstable
$|\lambda|\geq1$
- asymptotically stable
$|\lambda|\leq1$
## Poincaré map
time-periodic non-autonomous system
$$
x'=f(t,x)
$$
where $f(t+T,x)=f(t,x)$
### periodic time-shift immunity
if the solution of$$
x'=f(t,x),x(0)=x_0
$$
is $x_1(t)$
then the solution of$$
x'=f(t,x),x(kT)=x_0\quad(k\in\Z)
$$
is $x_2(t)=x_1(t-kT)$
### Poincaré map for the system
define function $P:\R\rightarrow\R$:
$$
P(x_0)=x(T)
\\[12pt]
\Rightarrow
x(kT)=P^k(x_0)
$$
$\forall\ x_0\in\R$, let $x(t)$ be the solution to$$
x'=f(t,x),x(0)=x_0
$$
### periodic solution
fixed point of Poincaré map
## Bernoulli equation
$$
\frac{\mathrm{d}y}{\mathrm{d}x}+P(x)y=Q(x)y^n
$$
### solution
substitution
$$
v=y^{1-n}
$$

# second-order linear equation
$$
a(x)y''+b(x)y'+c(x)y=f(x)
$$
## homogenous
$$
ay''+by'+cy=0
$$
### solution
a linear combination of two solution $y_1(x),y_2(x)$ where $\frac{y_1(x)}{y_2(x)}$ is not constant
$$
y(x)=c_1y_1(x)+c_2y_2(x)
$$
#### auxiliary equation
under the hood: try $y=e^{rx}$
$$
ar^2+br+c=0
$$
- $\Delta>0$ two distinct real root $r_1,r_2$
$$
y=c_1e^{r_1x}+c_2e^{r_2x}
$$
- $\Delta=0$ double real root $r_0$
two solution $y_1=e^{r_0x},y_2=xe^{r_0x}$
$$
y=(c_1+c_2x)e^{r_0x}
$$
- $\Delta<0$ two complex root $\alpha±i\beta$
$$
y=e^{\alpha x}(c_1\cos(\beta x)+c_2\sin(\beta x))
$$
alternatively$$
y=Ae^{\alpha x}\cos(\beta x-\phi)
$$
where$$
A=\sqrt{c_1^2+c_2^2},\phi=\arg(c_1+ic_2)
$$
## non-homogenous
$$
ay''+by'+cy=f(x)
$$
### solution
- let$$
y_h(x)=y(x)-y_p(x)
$$
then $y_h(x)$ satisfy$$
ay''+by'+cy=0
$$
- find one **particular solution** $y_p(x)$
therefore$$
y(x)=c_1y_1(x)+c_2y_2(x)+y_p(x)
$$
#### linear differential operator
apply operator $L$ on function $g(x)$
$$
L[g](x)=ag(x)''+bg(x)'+cg(x)
$$
linear $\Leftarrow$
- $L[g_1+g_2]=L[g_1]+L[g_2]$
- $L[\lambda g]=\lambda L[g]$
#### polynomial $f(x)$
use the degree of $f(x)$ as the degree of the particular solution
#### exponential $f(x)$
$$
f(x)=P(x)e^{\lambda x}
$$
where $P(x)$ is polynomial
same as the polynomial method but multiply the same exponential
- when $\lambda$ is one root of auxiliary equation, multiply the polynomial solution by $x$
- when $\lambda$ is double root of auxiliary equation, multiply the polynomial solution by $x^2$
#### trigonometric $f(x)$
$$
f(x)=P_1(x)e^{\lambda x}\cos(\mu x)+P_2(x)e^{\lambda x}\sin(\mu x)
$$
same as polynomial but degree needs to be the maximum between $P_1(x),P_2(x)$ and need two polynomial
- when $\lambda+i\mu$ is one root of auxiliary equation, multiply the polynomial solution by $x$
#### combination of above case
split $f(x)$ to $f_1(x),\cdots$ that match above case
### linear differential operator
given $g(x)$, $L[g](x)$
$$
L[g]=ag''+bg'+cg
$$

# higher order differential equation
$n$-th order
$$
a_n(x)y^{(n)}+\cdots+a_0(x)y^{(0)}=f(x)
$$
where $a_i(x),f(x)$ are continuous on $I\subseteq\R$
## existence and uniqueness
above equation with $y(x_0)=y_0,\cdots,y^{(n-1)}(x_0)=y_{n-1}$
has unique solution $\Leftarrow\forall\ x\in I,a_i(x),f(x)$ are continuous, $a_n(x)≠0$
### system in matrix form
$$
M[y_1,\cdots,y_n](x_0)\ \vec c=\vec y_0\\[12pt]
\begin{bmatrix}
    y_1(x_0)&\cdots&y_n(x_0)\\
    \vdots&\ddots&\vdots\\
    y_1^{(n-1)}(x_0)&\cdots&y_n^{(n-1)}(x_0)
\end{bmatrix}
\begin{bmatrix}
    c_1\\\vdots\\c_n
\end{bmatrix}
=\begin{bmatrix}
    y_0\\\vdots\\y_{n-1}
\end{bmatrix}
$$
#### Wronskian
determinant
$$
W[y_1,\cdots,y_n]=\det M[y_1,\cdots,y_n]
$$
$y_1,\cdots,y_n$ linearly independent in $I$
$\Leftrightarrow\exist\ x_0\in I,W[y_1,\cdots,y_n](x_0)≠0$
$\Leftrightarrow\forall\ x\in I,W[y_1,\cdots,y_n](x_0)≠0$

# planar system of differential equation
$$
x'=f(x,y)
y'=g(x,y)
$$
with respect to $t$
## initial value problem
$$
x(t_0)=x_0\\
y(t_0)=y_0
$$
- autonomous
$t$ can start wherever wanted, let $t_0=0$
## integral curve
parameterized curve of $(x(t),y(t))$
## velocity vector
$$
\frac{\mathrm{d}}{\mathrm{d}t}(x(t),y(t))=(f(x,y),g(x,y))
$$
## phase plane

## non-autonomous planar system
$$
x'=f(x,y,t),y'=g(x,y,t)
$$
### periodic time-shift immunity
similar to periodic time-shift immunity in one dimension
### Poincaré map
$P:\R^2\rightarrow\R^2$
$$
P(x_0,y_0)=(x(T),y(T))\\[12pt]
\Rightarrow P^k(x_0,y_0)=(x(kT),y(kT))
$$
…
## forced duffing equation
$$
x'=y,y'=-by+x-x^3+F\sin(\gamma t)
$$
period $\frac{2\pi}{\gamma}$

# chaos
sensitive dependence on initial condition

## Poincaré map for autonomous system
### Henon-Heiles system
$$
x_1' = y_1\\
y_1' = − x_1 − 2x_1x_2\\
x_2' = y_2\\
y_2'=−x_1^2 +x_2^2 −x_2
$$

# linear system
$$
\vec x'=A(t)\vec x+\vec f(t)
$$
## planar linear system
$$
x_1'=a_{11}(t)x_1+a_{12}(t)x_2+f_1(t)\\
x_2'=a_{21}(t)x_1+a_{22}(t)x_2+f_2(t)
$$
where $a_{ij}(t),f_i(t),j,j\in\{1,2\}$ continuous
$$
\vec x=\begin{bmatrix}
    x_1\\x_2
\end{bmatrix},
\vec f(t)=\begin{bmatrix}
    f_1(t)\\f_2(t)
\end{bmatrix},
A=\begin{bmatrix}
    a_{11}(t)&a_{12}(t)\\
    a_{21}(t)&a_{22}(t)
\end{bmatrix}
$$
## homogeneity
- $\vec f(t)\equiv\vec0\Rightarrow$ homogeneous
- otherwise $\Rightarrow$ non-homogeneous
## convert linear differential equation to linear system
linear differential equation
$$
y^{(n)}+p_{n-1}(t)y^{(n-1)}+\cdots+p_0(t)y=g(t)
$$
define
$$
x_1=y\\
x_2=y'\\
\vdots\\
x_n=y^{(n-1)}
$$
get a linear system
## existence and uniqueness
If $A(t)$, $\vec f(t)$ are continuous functions in an interval $I ⊆ R$ and $t_0 ∈ I$ then for any initial vector $\vec x_0 ∈ R_n$ there exists a unique solution of
$\vec x' = A(t)\vec x + \vec f(t)$ in $I$ that satisfies the initial condition $\vec x(t_0) = \vec x_0$.
## linearity
linear combination of solution are also solution
## linear dependency
$$
\exists\ c_1,c_2,\cdots,c_m,\sum_{i=1}^m(c_i^2)≠0,\quad\forall\ t\in I,\quad c_1\vec x_1(t)+\cdots+c_m\vec x_m(t)\equiv0
$$
## Wronskian
for $n$ solution $\vec x_1,\cdots,\vec x_n$
$$
X(t)=\begin{bmatrix}
    \vec x_1&\cdots&\vec x_n
\end{bmatrix}
=\begin{bmatrix}
    x_{1,1}&\cdots&x_{n,1}\\
    \vdots&\ddots&\vdots\\
    x_{1,n}&\cdots&\vec x_{n,n}
\end{bmatrix}\\[12pt]
W[\vec x_1,\cdots,\vec x_n](t)=\det X(t)
$$
### linear dependency and Wronskian
- solution $\vec x_1(t),\cdots,\vec x_n$ are linearly dependent in $I$
- $\Leftrightarrow\forall\ t\in I,\quad W[\vec x_1,\cdots,\vec x_n](t)=0$
- $\Leftrightarrow\exists\ t_0\in I,\quad W[\vec x_1,\cdots,\vec x_n](t_0)=0$
### fundamental solution and fundamental matrix
#### fundamental solution
collection of $n$ *linearly independent* solution $\vec x_1,\cdots,\vec x_n$
#### fundamental matrix
corresponding matrix $X(t)=\begin{bmatrix}
    \vec x_1(t)&\cdots&\vec x_n(t)
\end{bmatrix}$
- invertible
- general solution for the linear system
$$
\vec y(t)=c_1\vec x_1(t)+\cdots+c_n\vec x_n(t)
=X(t)\vec c
$$
- $$
X'(T)=A(t)X(t)
$$
- solution for the initial value problem with $\vec x(t_0)=\vec x_0$
$$
\vec y(t)=X(t)X(t_0)^{-1}\vec x_0
$$
- $\forall\ Y(t)$ that is another fundamental matrix
$$
\exists\ C,\quad Y(t)=X(t)C
$$
    - $\det C≠0$
- $$
\forall\ C,\det C≠0,\quad X(t)C\text{ is a fundamental matrix}
$$
- let $Y(t)=X(t)X(t_0)^{-1}$, then $Y(t_0)\vec x_0=0$
$$
\vec y(t)=Y(t)\vec x_0
$$

---