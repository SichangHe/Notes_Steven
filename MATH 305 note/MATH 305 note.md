# logic

## statement

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

### relation between statement

#### logical implementation $P⇒Q$

$Q$ is true whenever $P$ is true\
or: $P→Q$ is tautology

<!-- 1. Modus Ponens
1. Modus Tollens
1. Simplification
1. Simplification
1. Addition
1. Addition -->

![some fact](fact-1.2.1.png)

#### logical equivalence $P⇔ Q$

$Q$ is true whenever $P$ is true
and $P$ is true whenever $Q$ is true\
or: $P⇔ Q$ is tautology

![some fact](fact-1.2.2.png)

## quantifier

- universal quantifier $∀$
    - if all predicate value satisfy
    - $∀\ x\in U,P(x)⇔\displaystyle\bigwedge_{x\in U}P(x)$
    - if $U=\empty$, $∀\ x\in U,P(x)$ is true
- existential quantifier $∃$
    - if at least one predicate value satisfy
    - "some" predicate value satisfy
    - $∃\ x\in U,P(x)⇔\displaystyle\bigvee_{x\in U}P(x)$
    - if $U=\empty$, $\ x\in U,P(x)$ is false
- relationship
    - natural implication\
        provided $U≠\empty$, $∀\ x\in U,P(x)→∃\ x\in U,P(x)$
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
- empty set (null set) $\empty$

### cardinality

size of the set $|A|$

### subset

$A$ is a subset of $B$
$$
(A\subseteq B)⇔(∀\ x,(x\in A)→(x\in B))
$$

- $A\subseteq A$
- $\empty\subseteq A$
- $((A\subseteq B)\wedge(B\subseteq C))→(A\subseteq C)$
- $(A\subseteq B)\wedge(B\subseteq A)⇔(A=B)$
- $A$ has $2^{|A|}$ subset

#### proper subset

$$
(A\subset B)⇔(A\subseteq B\wedge A≠B)
$$

#### power set

$\mathcal P(A)=\{S:S\subseteq A\}$

- cardinality $|\mathcal P(A)|=2^{|A|}$

### set operation

#### union set

$$
A\cup B=\{x:(x\in A)\vee(x\in B)\}
$$

- $(P(A\cup B)=P(A)\cup P(B))⇔((A\subseteq B)\vee(B\subseteq A))$

#### intersection set

#### set difference

$$
A-B=\{x:(x\in A)\wedge(x\notin B)\}
$$

#### Cartesian product

$$
A\times B=\{(x,y):(x\in A)\wedge(x\in B)\}
$$

- $|A\times Y|=|A||B|$
- $A\times\empty=\empty\times A=\empty$

---
