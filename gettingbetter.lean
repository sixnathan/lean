variable {p q r : Prop} 
example : p ∧ (q ∨ r) ↔ (p ∧ q) ∨ (p ∧ r) := 

  Iff.intro 
  (λ h => Or.elim h.right
    (λ hq => Or.inl ⟨h.left, hq⟩)
    (λ hr => Or.inr ⟨h.left, hr⟩))
  (λ h => Or.elim h 
    (λ hpq => ⟨hpq.left, Or.inl hpq.right⟩)
    (λ hpr => ⟨hpr.left, Or.inr hpr.right⟩)) 


example : p ∨ (q ∧ r) ↔ (p ∨ q) ∧ (p ∨ r) :=
  Iff.intro 
  (λ h => Or.elim h 
    (λ hp => ⟨Or.inl hp, Or.inl hp⟩) 
    (λ hqp => ⟨Or.inr hqp.left, Or.inr hqp.right⟩))
  -- note to self: idk precisely the rules of introduction the other Or elimination rule 
  (λ h => Or.elim h.left  
    (λ hp => Or.inl hp)
    (λ hq => Or.elim h.right  
    (λ hp => Or.inl hp)  
    (λ hr => Or.inr ⟨hq, hr⟩))
    )

example : (p → (q → r)) ↔ (p ∧ q → r) := 
  Iff.intro 
  (λ h => λ )    
  (λ ⟨hp, hq⟩ hr hp hq => hr)  

-- what am i trying to prove? that p → (q → r) ↔ (p ∧ q → r)  
  -- if (if p then (q then r)) then if (p ∧ q) then r  


example : (p → (q → r)) ↔ (p ∧ q → r) :=
  Iff.intro 
  (λ h => λ hpq => ((h hpq.left) hpq.right) ) 

  (λ h => λ hp hq => h ⟨hp, hq⟩ ) 


example : ((p ∨ q) → r) ↔ (p → r) ∧ (q → r) := 
  Iff.intro 
  (λ h => ⟨ 
  λ hp => h (Or.inl hp),
  λ hq => h (Or.inr hq) 
  ⟩

  ) 


  (λ h => λ hpq => Or.elim hpq 
  (λ hp => h.left hp)
  (λ hq => h.right hq))
  

example : ¬(p ∨ q) ↔ ¬p ∧ ¬q := 
  Iff.intro 
  (λ h => ⟨λ hpq => h (Or.inl hpq) ,λ hpq => h (Or.inr hpq)⟩)
  (λ h => λ hqp => Or.elim hqp 
  (λ hp => h.left hp) 
  (λ hq => h.right hq))



