-- i would like to prove something via implication 
variable {p : Prop} 
variable {q : Prop} 

theorem implies (imp : p → q) (hp : p) : q := imp hp 
-- this could also be expressed as: 
theorem implieslambda: (p → q) → p → q := λ f hp => f hp 

theorem t1 (hp : p) (hq : q) : p := hp 

#print t1 -- forall p q of type Prop, if we have a proof of p, then we have proved p  

variable {r : Prop) 
axiom hr : r 
axiom hp : p 
theorem t2 : q → p := t1 hp 
-- how does this work? 
theorem t3 : p → q → p := λ hp hq => hp

-- t2 and t3 are logically equivalent: in the first we are stating that there univerally exists something of type p, and therefore from taht we can deduce that 


variable (x y : Nat) 
#check λ (x : Nat) (y : Nat) => x * y 

variable (x : Nat) 

#check (λ x => x)         

#eval (λ x => x) 3 

#check λ x => λ y => x + y 

#check λ x y => x + y 

def addition (x y : Nat) := x + y 
#check λ x y  => x + y 
#check λ (x : Nat) (y : Nat) => (x + y : Nat)  
#check λ 



