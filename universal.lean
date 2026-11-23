variable (α : Type) (p q : α → Prop) 

example : (∀ x, p x ∧ q x) → ∀ x, p x := 
  λ h => 
  _    


example (α : Type) (p q : α → Prop) : 
    (∀ x : α, p x ∧ q x) → ∀ y : α, p y := 
    λ h y => (h y).left  


/- what did we do here? 
        we had our goal and assumption 
        elim rule for ∀ is when given a forall term s and any term t : α, we have s t : β  x   
        introduction rule is: 
            given a term t of type β x, where x : α is arbitrary: we can introduce forall 


            -/ 


example (α : Type) ( p q : α → Prop) : 
    (∀ x : α, p x ∧ q x) → ∀ y : α, p y := 
  λ h y => 
  -- what does this statement really read as? 
    -- h → (x : α) → β x 
        -- so when we introduce assumptions we are reading them from left to right, and the β x is the final proposition that we are trying to prove kokokok i think taht makes some sense 

        -- next step is to apply the assumption that we have to the previous one i think. 

      have hy := h y  
      have py := hy.left 
      py  
    

example 



example (α : Type) ( p q : α → Prop) : (∀ x : α, p x ∧ q x) → ∀ y : α, p y := 
λ h y => sorry   



example (α : Type) (p q : α → Prop) : (∀ x : α, p x ∧ q x) → ∀ x : α, p x := 
  λ h y => (h y).left  



variable (α : Type) (r : α → α → Prop) 

variable (trans : ∀ x y z, r x y → r y z → r x z) 
variable (a b c : α) 
variable (hab : r a b) (hbc: r b c) 

#check trans

#check trans a b c 
#check trans a b c hab   
#check trans a b c hab hbc   


variable (reflr : ∀ x, r x x) 
variable (x : α) 
#check reflr x   
variable (thing : α → β → Prop) 
variable (symmr : ∀ i, ∀ o , thing i o) 
#check symmr  
-- so here we have inferred some type signatures 
variable ( 




