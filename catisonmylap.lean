/- some testing with the conjunction 
-/  
section thing  
variable {p q : Prop} 
example (hpq : p ∧ q) : q := hpq.right 
example (hp : p) (hq : q) : p ∧ q := And.intro hp hq 
example (hp : p) (hq : q) : p ∧ q := ⟨ hp , hq ⟩  
example : (p ∧ q) -> p := λ hpq => hpq.left 
example : p -> q -> (p ∧ q) := λ hp hq => ⟨ hp, hq ⟩  

/- some testing with the disjunction 
-/ 

example (hp : p) : p ∨ q := Or.intro_left q hp    
example (hq  : q) : q ∨ p := Or.intro_right p hq 
-- so the right or left in this situatino refers to the proposition for the proof that we have already obtained. 


example (h : p∧q) : q∧p :=    
variable (r : Prop) 
example (h : p ∨ q) : q ∨ p :=  
  Or.elim h   
    (fun hp : p => show q ∨ p from Or.intro_right q hp) 
    (fun hq  : q => show q ∨ p from Or.intro_left p hq) 
  -- what did we do here? 
  -- we eliminated the propostion p or q, and then we had two cases: one in which 
  -- we could assume hp to be true (the first case) and another in which q was true? 
  example (h : p ∨ q) : q ∨ p := 
  Or.elim h (fun hp : p => Or.intro_right q hp) (fun hq : q => Or.intro_left p hq) 
  /- we would like to prove proposition q ∨ p from proposition p ∨ q and this follows the elimination rule: 
      proposition r holds iff p implies r and q implies r 
      -/ 

-- wow writing this while cat is on my lap 


example (hp : p) (hq : q) : p ∨ q := Or.inl hp   
example (hp : p) (hq : q) : p ∨ q := Or.inr hq   
-- hmmm hmmmm 

example (hpq : p ∨ q) : q ∨ p := Or.elim hpq (λ hp => Or.inr hp) (λ hq => Or.inl hq) 
-- this is true! YAY 

/- so in this: 
              Or.elim takes three arguments : p or q, then p implies r (which in this case is just Or.inl hp (or Or.intro_left q hp) (i.e we create the proposition p ∨ q 
              and then q implies r which is Or.inl hq (or Or.intro_right (so the right is for the proof which we are assuming) -/ 

/- negation and falsity: 
¬ p is actually 
p → False. 

we can produce a proof of false by assuming p and not p therefore -/ 

example (hnp : ¬p) (hp : p) : q := hnp hp   
-- why does this not work? 

example (hnp : ¬p) (hp : p) : q := False.elim (hnp hp) 
-- YAY we have proven it 

example (hnp : ¬p) (hp : p) : q := absurd hp hnp 
-- this is saying that if you assume that p is both true and false then you can prove anything (as there is a contradiction) 

example : p∧q ↔ q ∧ p := Iff.intro (λ hpq : p∧q => ⟨hpq.right, hpq.left⟩ ) (λ hqp : q∧ p => ⟨hqp.right, hqp.left⟩)   


-- YES this is so cool i cant believe that i proved this ! YAY 


example : (p ∨ q) ∨ r ↔ p ∨ (q ∨ r) := 
  Iff.intro 
  (λ h => _)
  (λ h => _)


