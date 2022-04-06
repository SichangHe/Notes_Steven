# logic

## logical statement

### law of excluded middle

statement is either true or false

### statement combination

#### conjunction $P\wedge Q$

$P$ and $Q$

#### disjunction $P\vee Q$

$P$ or $Q$

#### negation $¬P$

not $P$

#### conditional connective $P→Q$

if $P$ then $Q$    *antecedent $P$, consequent $Q$*\
or: $Q$ only if $P$\
or: $Q$ if $P$

- converse $Q→P$
- inverse $¬P→¬Q$
- contrapositive $¬Q→¬P$

#### biconditional $P\leftrightarrow Q$

$P$ iff $Q$\
or: $Q$ iff $P$

#### compound statement

- $¬$ has higher precedence
- $¬(P→Q)\equiv P\wedge¬Q$

##### truth table

![truth table](truth-table-example.png)

column 1~3: iter T and F every 1, 2, 4, … row

calculate column of individual statement and calculate column under operator

##### tautology

statement, always true

e.g. $P\vee¬P$

##### contradiction

statement, always false

e.g. $P\wedge ¬P$

### relation between statement (meta statement)

logical statement about logical statement

#### logical implementation $P⇒Q$

$Q$ is true whenever $P$ is true\
or: $P→Q$ is tautology

- everything can be "proven" using contradiction
$$
Contradiction⇒Anything
$$

1. $(P → Q)\wedge P ⇒ Q$ (Modus Ponens)
1. $P\wedge Q ⇒ P$ (Simplification)
1. $P ⇒ P\vee Q$ (Addition)
1. $(P\wedge Q)\wedge¬Q ⇒ P$ (Modus Tollendo Ponens)
1. $P ↔ Q ⇒ P → Q$ (Biconditional-Conditional)
1. $(P → Q)\wedge(Q → P) ⇒ P ↔ Q$ (Conditional-Biconditional)
1. $(P → Q)\wedge(Q → R) ⇒ P → R$ (Hypothetical Syllogism)
1. $(P → Q)\wedge(R → S)\wedge(P\vee R) ⇒ Q\wedge S$ (Constructive Dilemma)

#### logical equivalence $P⇔ Q$

$Q$ is true iff $P$ is true
and $P$ is true whenever $Q$ is true\
or: $P⇔ Q$ is tautology

1. $¬(¬P) ⇔ P$ (Double Negation)
1. $P\wedge Q ⇔ Q\wedge P$ (Communitative Law)
1. $(P\vee Q)\vee R ⇔ P\vee(Q\vee P)$ (Associative Law)
1. $P\wedge(Q\vee R) ⇔ (P\wedge Q)\vee(P\wedge R)$ (Distributive Law)
1. $P → Q ⇔ ¬P\vee Q$
1. $P → Q ⇔ ¬Q → ¬P$ (Contrapositive)
1. $¬(P\wedge Q) ⇔ ¬P\vee ¬Q$ (De Morgan's Law)
1. $¬(P\vee Q) ⇔ ¬P\wedge ¬Q$ (De Morgan's Law)
1. $¬(P → Q) ⇔ P\wedge¬Q$
1. $¬(P ↔ Q) ⇔ (P\wedge¬Q)\vee(¬P\wedge Q)$

## quantifier

- universal quantifier $∀$
    - if all predicate value satisfy
    - $∀\ x\in U,P(x)⇔\displaystyle\bigwedge_{x\in U}P(x)$
    - if $U=∅$, $∀\ x\in U,P(x)$ is true
- existential quantifier $∃$
    - if at least one predicate value satisfy
    - "some" predicate value satisfy
    - $∃\ x\in U,P(x)⇔\displaystyle\bigvee_{x\in U}P(x)$
    - if $U=∅$, $\ x\in U,P(x)$ is false
- relationship
    - natural implication\
        provided $U≠∅$, $∀\ x\in U,P(x)→∃\ x\in U,P(x)$
    - $¬∀\ x\in U,P(x)⇔∃\ x\in U,¬P(x)$
        - reason\
            $$
            ¬∀\ x\in U,P(x)
            ⇔¬\bigwedge_{x\in U}P(x)\\
            ⇔\bigvee_{x\in U}¬P(x)
            ⇔∃\ x\in U,¬P(x)
            $$

### predicate

- expression
- contain **predicate variable** (free variable)
- either true of false depending on value of **predicate variable**

### domain

### multiple quantifier

- negation\
    negate each one

## strategy for proof

### direct proof

### contrapositive

$$
(¬Q→¬P)⇔(P→Q)
$$

### proof by contradiction

$$
¬(P→Q)
⇔¬(P\wedge¬Q)
⇔(¬P\vee Q)
$$

### mathematical induction

- $P(1)$
- $∀\ n\in N,P(n)→P(n+1)$
$→∀\ n\in N,P(n)$

## set theory

- order is irrelevant
- repetition have no effect
- singleton—set with one element $\{a\}$
- empty set (null set) $∅$

### cardinality

size of the set $|A|$

### subset

$A$ is a subset of $B$
$$
(A⊆ B)⇔(∀\ x,(x\in A)→(x\in B))
$$

- $A⊆ A$
- $∅⊆ A$
- $((A⊆ B)\wedge(B⊆ C))→(A⊆ C)$
- $(A⊆ B)\wedge(B⊆ A)⇔(A=B)$
- $A$ has $2^{|A|}$ subset

#### proper subset

$$
(A\subset B)⇔(A⊆ B\wedge A≠B)
$$

#### power set

$\mathcal P(A)=\{S:S⊆ A\}$

- cardinality $|\mathcal P(A)|=2^{|A|}$

### set operation

#### union set

$$
A\cup B=\{x:(x\in A)\vee(x\in B)\}
$$

- $(P(A\cup B)=P(A)\cup P(B))⇔((A⊆ B)\vee(B⊆ A))$

#### intersection set

#### set difference

$$
A-B=\{x:(x\in A)\wedge(x\notin B)\}
$$

#### Cartesian product

$$
A×B=\{(x,y):(x\in A)\wedge(x\in B)\}
$$

- $|A×Y|=|A||B|$
- $A×∅=∅×A=∅$

## relation $R$ from $A$ to $B$

- subset $R ⊆ A×B$
- $aRb$, or $a$ has relation $R$ with $b⇔(a,b)\in R$

### relation class of $a$ with respect to $R$

$$
R[a]=\{b\in B|aRb\}
$$

- reflexive relation\
    $∀\ x, \quad xRx$
- symmetric relation\
    $∀\ xRy,\quad yRx$
- transitive relation\
    $∀\ xRy,yRz,\quad xRz$

#### equivalence relation $∼$

reflexive, symmetric, transitive relation

##### equivalence class $[x]$

$$
[x]=\left\{
    y|x∼y
\right\}
$$

- $∀\ x,y\in A≠ ∅,x∼y,\quad [x]=[y]$
- $∀\ x,y\in A≠ ∅,x\nsim y,\quad [x]\cap[y]=∅$

##### quotient set $A/∼$

$$
A/∼=\left\{
    [x]|x\in A
\right\}
$$

### partition $\mathcal D$

set of exclusive non-empty subset of $A$

- $P,Q\in\mathcal D,P≠Q ⇒ P\cap Q= ∅$
- $\displaystyle\bigcup_{P\in\mathcal D}P=A$

#### corollary

$A≠ ∅$, $∼$ is an equivalence relation on $A \\⇒ A/∼$ is a partition of $A$

## function $f:X → Y$

- domain $X$
- codomain $Y$
- $F ⊆ X × Y$
- $ ∀\ x\in X,\quad ∃$ one and only one $(x,y)\in F$

### function property

- injective (one-on-one)
    - $∀\ x_1,x_2,\quad x_1≠x_2 ⇔ f(x_1)≠f(x_2)$
    - $⇒f^{-1}(f(A))=A$
- surjective (onto)
    - $∀\ y\in B, ∃\ x\in A,\quad f(x)=y$
    - $⇒f(f^{-1}(B))=B$
- bijective (injective + surjective, or one-to-one correspondence)

### function composition $f\circ g$

composition of $g$ and $f$
$$
(f\circ g)(x)=f(g(x))
$$

- association law $(h\circ g)\circ f=h\circ g(\circ f)$
- identity law $f:A →B\quad ⇒ f\circ1_A=f,1_B\circ f=f$
- $f,g$ injective $⇒ g\circ f$ injective
- $f,g$ surjective $⇒ g\circ f$ surjective
- $f,g$ bijective $⇒ g\circ f$ bijective

#### inverse function $f^{-1}$

bijective function has unique inverse function $f^{-1}:Y → X$
$$
∀\ x\in X,f^{-1}(f(x))=x\qquad ∀\ y\in Y,f(f^{-1}(y))=y
$$

- injective function $f:X → Y$ define bijection $g:X → R$
    - $R$ is range of $f$
    - $g(x)=f(x)$

### image $f(P)$

$P\subseteq A$
$$
f(P)=\left\{
    f(p)|p\in P
\right\}
$$

#### inverse image (preimage) $f^{-1}(Q)$

$$
f^{-1}(Q)=\left\{
    p\in P|f(p)\in Q
\right\}
$$

- preimage can be $∅$
- $f(f^{-1}(B))\subseteq B,f^{-1}(f(A))\subseteq A$

# metric space $(X,d)$

## metric $d$

a function
$$
d:X × X\rightarrow\R
$$

- $∀\ x≠y\in X,d(x,y)>0,\qquad ∀\ x=y\in X,d(x,y)=0$
- $∀\ x,y\in X,d(x,y)=d(y,x)$
- $∀\ x,y,z\in X,d(x,y)+d(y,z)≥d(x,z)$

### distance $d(x,y)$

### example

- Cartesian distance
- Manhattan distance
- Max
- zero-one

### Jaccard Distance

$$
d_j(A,B)=1-\frac{A\cap B}{A\cup B}
$$

## metric on set $X$

- $∀\ x,y\in X,\quad d(x,y)≥0$
- $∀\ x,y\in X,\quad d(x,y)=d(y,x)$
- $∀\ x,y,z\in X,\quad d(x,y)≤d(x,z)+d(z,y)$

---
