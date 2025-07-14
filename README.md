# 🎲 Game-Theory-2

This repository contains solutions to five classical and advanced game theory problems, implemented using **Octave**. Each problem explores different strategic scenarios and applies analytical and numerical techniques to find Nash Equilibria and optimal strategies.

---

## 📘 Problems Overview

### 🧮 Problem 1: Cournot Duopoly with Nonlinear Demand

Two companies produce the same product.  
Let `(x₁, x₂ ∈ [0, ∞))` be the production levels.

- **Price function**:  
  `P(x) = 100 - 2√(x₁ + x₂)`

- **Cost functions**:  
  - Company 1: `C¹(x₁) = x₁ + 10`  
  - Company 2: `C²(x₂) = 2x₂ + 5`

📌 **Goal**:  
Find the profit functions, the Nash Equilibrium (NE) production levels, and the corresponding gains.

---

### ✊ Problem 2: Public Demonstration Game

There are `N` citizens. Each citizen `n` gains `vₙ` by participating in a demonstration but pays a cost `c / k`, where `k` is the total number of participants.

- If a citizen does **not** participate: payoff = `0`  
- If they **do** participate: payoff = `vₙ - c / k`

Given:  
`c > v₁ > v₂ > ... > vₙ = 0`

📌 **Goal**:  
Find all Nash Equilibria for this participation game.

---

### 🏭 Problem 3: Oligopoly with Capacity Constraints

Let `N ≥ 2` firms produce a homogeneous product.

- Each firm `n` produces `xⁿ ∈ [0, ∞)` units with cost per unit `cⁿ`
- Market price: P(x₁ + ... + xₙ) =
100 - (x₁ + ... + xₙ), if total ≤ 100
0, otherwise

markdown
Αντιγραφή
Επεξεργασία

Assume:  
`0 < c¹ < c² = c³ = ... = cⁿ`  
At equilibrium: `x̂¹ ≠ x̂² = ... = x̂ⁿ`

📌 **Goal**:  
Compute the Nash Equilibrium production vector `x̂`.

---

### 🔫 Problem 4: Duel Game (Sequential Probability Duel)

Two players `P¹` and `P²` duel over `D` rounds. Each has one bullet.

#### Game Rules:
- Rounds alternate between players:
- Odd rounds: `P¹` moves
- Even rounds: `P²` moves
- In each round, the player can **shoot** or **move one step forward**
- Probability of hitting depends on distance: `p₁(d)`, `p₂(d)`
- `pₙ(0) = 1`
- `pₙ(d)` is decreasing with distance

📌 **Goal**:  
Model the game as a decision tree, compute expected utilities, and find the optimal strategies using backward induction.

---

### 🚔 Problem 5: Repeated Prisoner's Dilemma

Players `P¹` and `P²` play `T` stages of the following stage game:

A =
[ (4, 4) (0, 5)
(5, 0) (1, 1) ]

markdown
Αντιγραφή
Επεξεργασία

#### Strategy:
Each player's move at time `t` depends on the full history of the game `h_{t-1}`. We consider two cases:

#### (a) Finite T:
- Prove that the only NE is **always defecting**:  
  `σ̂ⁿ(h_t) = 2` for all `t`

#### (b) Infinite T with discounting:
- Discount factor `γ ∈ (0, 1)`
- Define a **conditional cooperation strategy** `σ̄ⁿ` where:
  - Cooperate at `t = 1`
  - Continue cooperating if the opponent has never defected; otherwise, defect forever

📌 **Goals**:
1. Prove `(σ̂¹, σ̂²)` is NE for all `γ`
2. Prove `(σ̄¹, σ̄²)` is NE for `γ = 0.5`
3. Find the critical `γ*` such that mutual defection is NE **iff** `γ > γ*`

---

## 🛠 Requirements

- Octave or MATLAB
- Scripts and custom functions provided in the repo

> This project explores theoretical and algorithmic aspects of strategic interaction using both analytical and computational tools.
