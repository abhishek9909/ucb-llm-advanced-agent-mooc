open Nat

def sub2 : Nat → Nat
  | zero   => zero
  | 1 => 30
  | 25 => 100
  | x + 1 => x

def isZero : Nat → Bool
  | zero   => true
  | succ _ => false

def foo : Nat × Nat → Nat
  | (0, _)     => 0
  | (_+1, 0)   => 1
  | (_+1, _+1) => 2

-- #print foo
-- #print sub2
-- #eval sub2 (sub2 26)
