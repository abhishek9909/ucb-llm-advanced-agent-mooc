variable (p q r : Prop)

-- commutativity of ∧
example : (p ∧ q) ∧ r ↔ p ∧ (q ∧ r) := by
  apply Iff.intro
  -- forward direction
  case mp =>
    intro h
    cases h with
    | intro hpq hr =>
      cases hpq with
      | intro hp hq =>
        apply And.intro
        exact hp
        apply And.intro
        exact hq
        exact hr
  -- backward direction
  case mpr =>
    intro h
    cases h with
    | intro hp hqr =>
      cases hqr with
      | intro hq hr =>
        apply And.intro
        apply And.intro
        exact hp
        exact hq
        exact hr
