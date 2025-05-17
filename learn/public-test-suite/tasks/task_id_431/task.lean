-- Implementation
def hasCommonElement (a : Array Int) (b : Array Int) : Bool :=
  -- << CODE START >>
  let n := a.size
  let m := b.size
  let rec loop (i : Nat) : Bool :=
    if i < n then
      let rec innerLoop (j : Nat) : Bool :=
        if j < m then
          if a[i]! = b[j]! then true else innerLoop (j + 1)
        else false
      if innerLoop 0 then true else loop (i + 1)
    else false
  loop 0
  -- << CODE END >>


-- Theorem: If the method returns true, there exists at least one common element between the two arrays; If the method returns false, there are no common elements between the two arrays
def hasCommonElement_spec (a : Array Int) (b : Array Int) (result : Bool) : Prop :=
  -- << SPEC START >>
  (∃ i j, i < a.size ∧ j < b.size ∧ a[i]! = b[j]!) ↔ result
  -- << SPEC END >>
