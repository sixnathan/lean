variable {p q : Prop} 
variable (hp : p) 
axiom implication: p→q 
example (qp : p) : q := implication qp  
example : q := implication hp  

example ( a b : Nat) (ha : ∃ k, a = 2 * k) (hb : ∃ m , b = 2 * m) : 
    ∃ n , a + b = 2 * n := by 
    obtain ⟨k, hk⟩ := ha 
    obtain ⟨m, hm⟩ := hb 
    refine ⟨k + m, ?_⟩ 
    omega 
