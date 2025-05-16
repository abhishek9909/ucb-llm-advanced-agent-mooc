variable (p q r : Prop)

-- commutativity of ∧
example : (p → (q → r)) ↔ (p ∧ q → r) := by
  apply Iff.intro
  . intro h
    intro hpq
    apply h
    . exact And.left hpq
    . exact And.right hpq
  . intro h
    intro hp
    intro hq
    apply h
    apply And.intro
    . exact hp
    . exact hq
