variable (p q r : Prop)

-- commutativity of ∧
example : ¬(p ∨ q) ↔ ¬p ∧ ¬q := by
  apply Iff.intro
  . intro h
    apply And.intro
    -- produce ¬p
    . intro hp
      apply h
      apply Or.inl
      exact hp
    -- produce ¬q
    . intro hq
      apply h
      apply Or.inr
      exact hq
  . intro h
    intro hpq
    apply Or.elim hpq
    -- produce p
    . intro hp
      apply And.left h
      exact hp
    -- produce q
    . intro hq
      apply And.right h
      exact hq
