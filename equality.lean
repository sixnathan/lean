#check Eq.refl  
#check Eq.symm 
#check Eq.trans 
-- ya sure okokok 

universe u 
universe  

open Eq 
#check @refl.{u} 
#check @symm.{u}
#check @Eq.trans.{u}
-- hmmm apparently when using opened trans it is ambiguous. 

variable (α : Type) (a b c d : α) 
variable (hab : a = b) (hcb: b = c) (hcd: d = c) 
example: a = d := Eq.trans (Eq.trans hab (Eq.symm hcb) hcd   
variable (β : Type) 
example (a : α) (b : β) : (a, b).1 = a := rfl  
example (a : α) (b : β) : (a, b).1 = a := _ 
example (a : α) : a = a := rfl 
example: 1 + 1 + 1 = 2 + 1 := rfl      


example (f : α → β) (a : α) : (fun x => f x) a = f a := rfl 
variable (hab : a = d )
#check hab 
#check hab.trans 
#check hab.symm 


example ( a b : α) (p : α → Prop) (h1 : a = b) (h2 : p a) : p b := 
  Eq.subst h1 h2 

example ( a b : α) (p : α → Prop) (h1 : a = b) (h2 : p a) : p b := 
  h1 ▸ h2 
