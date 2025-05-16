variable (p q r : Prop)

-- commutativity of ∧
example : ¬p ∨ ¬q → ¬(p ∧ q) := by
  intro h
  intro hpq
  apply Or.elim h
  -- produce ¬p -> ¬(p ∧ q)
  . intro hp
    apply hp
    apply And.left
    exact hpq
  -- produce ¬q -> ¬(p ∧ q)
  . intro hq
    apply hq
    apply And.right
    exact hpq
