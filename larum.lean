variable {p q r : Prop}

example : ¬p ∨ ¬q → ¬(p ∧ q) := 
  λ h => Or.elim h 
  (λ hp => λ hpq => hp hpq.left)
  (λ hq => λ hpq => hq hpq.right)
  
example : ¬(p ∧ ¬p) := 
  λ h => h.right h.left

example : p ∧ ¬q → ¬(p → q) := 
  λ h hpq => h.right (hpq h.left)  

example : ¬p → (p → q) := 
  λ hnp hp => False.elim (hnp hp)             

example : (¬p ∨ q) → (p → q) := 
  λ h hp => Or.elim h 
  (λ hnp => False.elim (hnp hp)) 
  (λ hq => hq) 

example : p ∨ False ↔ p := 
  Iff.intro 
  (λ h => Or.elim h 
  (λ hp => hp) 
  (λ hf => False.elim hf) )
  
  (λ hp => Or.inl hp) 


example : p ∧ False ↔ False := 
  Iff.intro 
  (λ h => h.right) 
  (λ h => ⟨False.elim h, h⟩)

example : (p → q) → (¬q → ¬p) := 
  λ hpq hq hp => False.elim (hq (hpq hp)) 





