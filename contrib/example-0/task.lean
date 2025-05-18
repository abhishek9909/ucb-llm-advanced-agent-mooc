def countPrimes (x : Nat) : Nat :=
  -- << CODE START >>
  if x < 2 then 0
  else
    let nums := (List.range (x + 1)).drop 2  -- creates [2, 3, ..., x]
    let rec sieve (lst : List Nat) (acc : List Nat) : List Nat :=
      match lst with
      | [] => acc
      | 0 :: ps => sieve ps acc
      | p :: ps =>
          let newAcc := p :: acc
          -- loop through the list and mark multiples of p as 0
          let marked := ps.map (fun n => if n % p = 0 then 0 else n)
          sieve marked newAcc
      -- termination condition.
      termination_by lst.length
    let primes := sieve nums []
    primes.length
  -- << CODE END >>

def countPrimes_spec (x : Nat) (result: Nat) : Prop :=
  -- << SPEC START >>
  let arr := List.range (x + 1)
  let nums := arr.drop 2
  -- manually filter out the primes
  let rec isPrime (n : Nat) : Bool :=
    if n < 2 then false
    else
      let rec checkDivisor_aux (d : Nat) (fuel : Nat) : Bool :=
        match fuel with
        | 0 => true  -- Safety: if fuel is exhausted (should not happen in normal cases), we return true.
        | fuel' + 1 =>
          if d * d > n then true
          else if n % d = 0 then false
          else checkDivisor_aux (d + 1) fuel'
      checkDivisor_aux 2 (n - 2)
  let primes := nums.filter isPrime
  let count := primes.length
  result = count
  -- << SPEC END >>
