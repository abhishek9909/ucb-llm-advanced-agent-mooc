variable (p q r : Prop)

-- commutativity of ∧
example : p ∧ q ↔ q ∧ p := by
  apply Iff.intro
  -- forward direction
  case mp =>
    intro h
    -- destruct the conjunction
    apply And.intro
    exact And.right h
    exact And.left h
  -- backward direction
  case mpr =>
    intro h
    -- destruct the conjunction
    apply And.intro
    exact And.right h
    exact And.left h
