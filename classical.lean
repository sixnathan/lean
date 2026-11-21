open Classical 
variable {p q r : Prop}  

example: (p → q ∨ r) → ((p → q) ∨ (p → r)) := 
  λ h =>  


#check em p 
#check ¬¬p   
#check 

example :  ¬¬p → p := 
  λ h => 
  have emp := em p 
  Or.elim (emp)
  (λ hp => hp)
  (λ hnp => False.elim (h hnp) )

-- this introduces ¬¬p and then attempts to prove k 

example : ¬¬p → p := 
  λ h => 
  byCases
  (λ h1 => h1)
  (λ h2 => False.elim (h h2))




example : (p → q ∨ r) → ((p → q) ∨ (p → r)) := 
  λ h =>  
  Or.elim (Classical.em p)  
  (λ hp => Or.elim (h hp)
  (λ hq => Or.inl λ hp => hq)
  (λ hr => Or.inr λ hp => hr)
  )
  (λ hnp => Or.inl λ hp => False.elim (hnp hp))


example : ¬(p ∧ q) → ¬p ∨ ¬q :=  
  have hpp := Classical.em p 
  have hqq := Classical.em q 
  Or.elim hpp

  (Or.elim hqq
  (λ hq hp hnpq => Or.inl (False.elim (hnpq ⟨hp, hq⟩)))
  (λ hnq hp hnpq => Or.inr hnq))

  (Or.elim hqq
  (λ hq hnp hnpq => Or.inl hnp)
  (λ hnq hnp hnpq => Or.inl hnp))

example : ¬(p ∧ q) → ¬p ∨ ¬q :=  
  have hpp := Classical.em p 
  have hqq := Classical.em q 
  Or.elim hpp

  (λ h hnpq => _)

  (_)


example : ¬(p → q) → p ∧ ¬q := 
  have hp := Classical.em p 
  have hq := Classical.em q 
  Or.elim hp 
  (Or.elim hq 
  (λ hq hp hnpq => ⟨hp, False.elim (hnpq (λ hpp => hq))⟩)
  (λ hnq hp hnpq => ⟨hp,hnq⟩))
  (Or.elim hq 
  (λ hq hnp hnpq => ⟨_,_⟩)
  (_))
