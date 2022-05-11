<!-- markdownlint-disable MD041 -->

## inner product $\langle \vec v,\vec w\rangle$

$\langle \vec v,\vec w\rangle\in F$

$∀\ \vec u,\vec v,\vec w\in V,\ s\in F$

- $\langle \vec v,\vec v\rangle
    \begin{cases}>0&\vec v≠\vec0
        \\
        =0&\vec v=\vec0
    \end{cases}$
- $\langle \vec u+\vec v,w\rangle=\langle \vec u,w\rangle+\langle\vec v,w\rangle$
- $\langle s\vec v,\vec w\rangle=s \langle \vec v,\vec w\rangle$
- $\langle \vec v,\vec w\rangle=\overline{\langle \vec w,\vec v\rangle}$
- $⇒ \langle s\vec v+\vec u,\vec w\rangle
    =s \langle \vec v,\vec w\rangle+\langle\vec v,w\rangle$
- $⇒ \langle \vec v,s\vec u+\vec w\rangle
    =\bar s \langle \vec v,\vec u\rangle+\langle \vec v,\vec w\rangle$

### Euclidean inner product on $F^n$

$$
\langle (\vec w_1,\cdots,\vec w_n),(\vec z_1,\cdots,\vec z_n)\rangle
=\vec w_1\overline{\vec z_1}+\cdots+\vec w_n\overline{\vec z_n}
$$

### inner product on a function space

$V$ vector space of all continuous complex-valued function on $[0,1]$

an inner product

$$
\langle f,g\rangle=\int_0^1f\bar g\mathrm dx
$$

### orthogonal vector $\vec u,\vec v$

$$
\langle \vec u,\vec v\rangle=0
$$

- $∀\ \vec v\in V,\quad\vec0$ is orthogonal to $\vec v$
- $\vec0$ is the only vector orthogonal to itself

### Gram matrix (weight matrix) $G$

Gram matrix $G$ of the inner product in the ordered basis $\mathcal B$

$$
g_{ij}=\langle \vec w_j,\vec w_i\rangle
$$

- $V$ finite-dimensional vector space
- $\mathcal B=\vec w_1,\cdots,\vec w_n$ ordered basis for $V$
$⇒$ any inner product on $V$ is determined by $G$

$$
\langle \vec u,\vec v\rangle
=[\vec v]_{\mathcal B}G[\vec u]_{\mathcal B}
$$

- self-adjoint (Hermitian) $G=G^H$
    - $\Leftarrow g_{ij}=\overline{g_{ji}}$
- positive defined $∀\ \vec x\in F^n,\vec x^HG\vec x≥0$, equal iff $\vec x=\vec0$
- $S\in F^{n,n}$ positive defined,
    $(\vec\alpha_1,\cdots,\vec\alpha_n)$ is basis of
    $V ⇒ \langle \vec\alpha,\vec\beta\rangle=\vec\beta^HS\vec\alpha$ is inner product
    under Gram matrix $S$
- $\sigma:\langle\vec\alpha,\vec\beta\rangle\rightarrow G$ is bijection

### congruent matrix $S_1,S_2\in F^{n,n}$

$∃\ P$ invertible

$$
S_1=P^HS_2P
$$

- for basis
    $\mathcal A,\mathcal B,\quad[\vec v]_{\mathcal A},[\vec v]_{\mathcal B}$
    are congruent

### induced norm with inner product $\lVert \cdot\rVert$

$$
\lVert \vec u\rVert^2=\langle \vec u,\vec u\rangle
$$

#### projection of $\vec w$ onto $\vec v$, $\vec u$

$$
\vec u=\frac{\langle \vec w,\vec v\rangle}{\lVert \vec v\rVert^2}\vec v
$$

- $\langle \vec w-\vec u,\vec u\rangle=0$
- Pythagorean theorem

    $$
    \lVert \vec w\rVert^2
    =\lVert \vec u\rVert^2+\lVert \vec w-\vec u\rVert^2
    $$

- Cauchy-Schwartz inequality

    $$
    ∀\ \vec u,\vec v\in V,|\langle \vec u,\vec v\rangle|
    ≤ \lVert \vec u\rVert\lVert\vec v\rVert
    $$

    equal iff $\vec u=\lambda\vec v$

### orthonormal list of vector $\vec e_1,\cdots,\vec e_m$

$$
\langle \vec e_i,\vec e_j\rangle=\begin{cases}
    1&i=j
    \\
    0&i≠j
\end{cases}
$$

- norm of decomposed vector

    $$
    \lVert a_1\vec e_1+\cdots+a_m\vec e_m\rVert^2=|a_1|^2+\cdots+|a_m|^2
    $$

- the list is linearly independent

#### orthonormal basis

orthonormal list that form basis

- orthonormal list with length $\dim V$ is orthonormal basis of $V$

- $∀\ \vec v\in V,\quad\vec v
    =\langle \vec v,\vec e_1\rangle\vec e_1+\cdots
    +\langle \vec v,\vec e_n\rangle\vec e_n$
    - $\lVert \vec v\rVert^2
        =|\langle \vec v,\vec e_1\rangle|^2+\cdots
        +|\langle \vec v,\vec e_n\rangle|^2$

#### Gram-Schmidt orthogonalization process

$\vec v_1,\cdots,\vec v_n$ linearly independent
$⇒$ possible to construct orthonormal basis from it

$$
\vec v_1 → \vec\beta_1=\vec v_1
\quad\vec w_1=\frac{\vec\beta_1}{\lVert \vec\beta_1\rVert}
\\
\vec v_1,\vec v_2 → \vec\beta_2=\vec v_2-\langle \vec v_2,\vec w_1\rangle\vec w_1
\quad\vec w_2=\frac{\vec\beta_2}{\lVert \vec\beta_2\rVert}
\\
\vdots
\\
\vec v_1,\cdots,\vec v_k
→ \vec\beta_k=\vec v_k-\langle \vec v_k,\vec w_1\rangle\vec w_1
-\cdots-\langle \vec v_k,\vec w_{k-1}\rangle\vec w_{k-1}
\quad\vec w_k=\frac{\vec\beta_k}{\lVert \vec\beta_k\rVert}
$$

alternatively, construct orthogonal basis

$$
\vec v_1,\vec v_2 → \vec w_2
=\vec v_2
-\frac{\langle \vec v_2,\vec v_1\rangle}{\langle \vec v_1,\vec v_1\rangle}\vec v_1
\quad\vec w_2=\frac{\vec\beta_2}{\lVert \vec\beta_2\rVert}
\\
\vdots
\\
\vec v_1,\cdots,\vec v_k
→ \vec w_k=\vec v_k
-\frac{\langle \vec v_k,\vec v_1\rangle}{\langle \vec v_1,\vec v_1\rangle}\vec v_1
-\cdots
-\frac{\langle \vec v_k,\vec v_{k-1}\rangle}{\langle\vec v_{k-1},
\vec v_{k-1}\rangle}\vec v_{k-1}
$$

### orthogonal complement of $W$, $W^\perp$

$$
W^\perp=\{
    \vec v\in V|∀\ \vec w\in W,\langle \vec v,\vec w\rangle=\vec0
\}
$$

- $W^\perp$ is closed subspace
- $\{\vec0\}^\perp=V,V^\perp=\{\vec0\}$
- $U\cap U^\perp ⊆ \{\vec0\}$
- $U ⊆ W ⇒ W^\perp ⊆ U^\perp$
- $U$ subspace $⇒ V=U\oplus U^\perp$
    - $\dim U^\perp=\dim V-\dim U$
    - $(U^\perp)^\perp=U$

### orthogonal projection of $V$ onto $U$, $P_U$

$U$ is subspace of $V$\
$P_U\in L(V)$

for $\vec v\in V,\vec v=\vec u+\vec w,\vec u\in U,\vec w\in U^\perp$

$$
⇔ P_U\vec v=\vec u
$$

- $U=span(\vec x)$

    $$
    ⇒ P_U\vec v=\frac{\langle \vec v,\vec x\rangle}{\lVert \vec x\rVert^2}\vec x
    $$

- $∀\ \vec u\in U,\lVert \vec v-P_U\vec v\rVert≤\lVert \vec v-\vec u\rVert$
    equal iff $\vec u=P_U\vec v$

### Riesz representation theorem

$∀\ \phi$ linear functional on $V$, $∃$ unique $\vec u\in V$

$$
\phi(\vec v)=\langle \vec v,\vec u\rangle
$$

where

$$
\vec u=∑_i\overline{\phi(\vec e_i)}\vec e_i
$$

#### adjoint of $T$, $T^*$

$T\in L(V,W)$\
$T^*\in L(W,V)$

$$
∀\ \vec v\in V,\vec w\in W,
\quad \langle T\vec v,\vec w\rangle=\langle \vec v,T^*\vec w\rangle
$$

- $(S+T)^*=S^*+T^*$
- $(\lambda T)^*=\bar\lambda T^*$
- $(T^*)^*$=T$
- $(ST)^*=T^*S^*$
- $Null(T^*)=\mathcal R(T)^\perp$
- $\mathcal R(T^*)=Null(T)^\perp$
- $Null(T)=\mathcal R(T^*)^\perp$
- $\mathcal R(T)=(Null(T^*))^\perp$
- $\mathcal M(T^*,(f_1,\cdots,f_m),(e_1,\cdots,e_n))
    =\mathcal M(T,(e_1,\cdots,e_n),(f_1,\cdots,f_m))^H$
    - $(f_1,\cdots,f_m)$ orthonormal basis of $W$
    - $(e_1,\cdots,e_n)$ orthonormal basis of $V$

#### self-adjoint operator $T$

$$
T=T^*
$$

- $A=A^H$

#### Normal Operator $T$

$$
TT^*=T^*T
$$

- $T$ self-adjoint $⇒ T$ normal
- $AA^H=A^HA$
- $T$ normal $⇔ \lVert Tv\rVert=\lVert T^*v\rVert$
    - $⇒ Null(T)=Null(T^*),\mathcal R(T)=\mathcal R(T^*)$

### invariant subspace $U$ under $T$

$$
TU ⊆ U
$$

- some invariant subspace
    - $\{0\}$
    - $V$
    - $Null(T)$
    - $\mathcal R(T)$

### eigenvalue $\lambda$ and corresponding eigenvector $\vec v$ for $T\in L(V)$

$$
T\vec v=\lambda\vec v
$$

- $T$ has eigenvector $\vec v
    ⇒ T$ has invariant subspace $U=span(\vec v)$
- $\vec v\in Null(T-\lambda I)$
- $\lambda$ is eigenvalue of
    $T ⇒ (T-\lambda I$ not injective
    $ ⇔T-\lambda I$ not surjective $)$
- $∀\ T$ on finite-dimensional, nonzero, complex vector space, $T$ has eigenvalue
- $\lambda_1,\cdots,\lambda_m$ are distinct eigenvalue,
    $\vec v_1,\cdots,\vec v_m$ are corresponding eigenvector
    $⇒ \vec v_1,\cdots,\vec v_m$ linearly independent
- $T$ has at most $\dim V$ distinct eigenvalue
- $T$ self-adjoint $⇒$ all eigenvalue real
- $∀\ \vec v,\langle T\vec v,\vec v\rangle=0 ⇒ T=0$
- $V$ is complex inner product space
    $⇒ (T$ self-adjoint $⇔ ∀\ \vec v\in V,\langle T\vec v,\vec v\rangle\in \R)$
- $T$ normal, $\vec v$ eigenvector with eigenvalue $\lambda$ of $T ⇒ \vec v$
    eigenvector of $T^*$ with eigenvalue $\bar\lambda$

### spectral theorem

#### complex spectral theorem

$F\in \mathbb C,T\in L(V)\\
⇒ (T$ normal\
$⇔ V$ has orthonormal basis consisting of eigenvector of $T\\
⇔ T$ has diagonal matrix with respect to some orthonormal basis of $V)$

#### real spectral theorem

$F=\R,T\in L(V)\\
⇒ (T$ self-adjoint\
$⇔ V$ has orthonormal basis consisting of eigenvector of $T\\
⇔ T$ has diagonal matrix with respect to some orthonormal basis of $V)$

### positive semidefinite operator $T$

$$
∀\ \vec v\in V,\langle T\vec v,\vec v\rangle≥0
$$

- $⇔ T$ self-adjoint and all eigenvalue of $T$ are nonnegative
- $⇔ T$ has positive semidefinite square root
- $⇔ T$ has self-adjoint square root
- $⇔ ∃\ R\in L(V),T=R^*R$

### square root of operation $T$, $R$

$$
R^2=T
$$

- positive operator has unique positive square root

### isometry $S$

$$
∀\ \vec v\in V,\lVert S\vec v\rVert=\lVert \vec v\rVert
$$

- $⇔ \langle S\vec u,S\vec v\rangle=\langle \vec u,\vec v\rangle$
- $⇔ S\vec e_1,\cdots,S\vec e_n$ orthonormal for orthonormal
    $\vec e_1,\cdots,\vec e_n$
- $⇔ ∃\ \vec e_1,\cdots,\vec e_n$ orthonormal basis,
    $S\vec e_1,\cdots,S\vec e_n$ orthonormal
- $⇔ S^*S=I$
- $⇔ S^*$ isometry
- $⇔ S$ invertible and $S^{-1}=S^*$

---
