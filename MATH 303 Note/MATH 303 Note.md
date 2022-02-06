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
#### try $y=e^{rx}$
auxiliary equation
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
y=e^{ax}(c_1\cos(\beta x)+c_2\sin(\beta x))
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
- find one **specific solution** $y_p(x)$
therefore$$
y(x)=c_1y_1(x)+c_2y_2(x)+y_p(x)
$$
#### polynomial $f(x)$
use the degree of $f(x)$ as the degree of the special solution
#### exponential $f(x)$
$$
f(x)=P(x)e^{\lambda x}
$$
where $P(x)$ is polynomial
same with the polynomial method but multiply the same exponential
- when $\lambda$ is one root of auxiliary equation, multiply the polynomial solution by $x$
- when $\lambda$ is double root of auxiliary equation, multiply the polynomial solution by $x^2$
#### trigonometric $f(x)$
$$
f(x)=P_1(x)e^{\lambda x}\cos(\mu x)+P_2(x)e^{\lambda x}\sin(\mu x)
$$
same with polynomial but degree needs to be the maximum between $P_1(x),P_2(x)$ and need two polynomial
- when $\lambda+i\mu$ is one root of auxiliary equation, multiply the polynomial solution by $x$
#### combination of above case
split $f(x)$ to $f_1(x),\cdots$ that match above case
### linear differential operator
given $g(x)$, $L[g](x)$
$$
L[g]=ag''+bg'+cg
$$

# higher order differential equation
