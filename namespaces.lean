namespace Foo 
def a : Nat := 5 
def newfunction : Nat → Nat → Nat := fun x y => x  

#check a 
end Foo  

#check a   

namespace thing 
def newnewfunction (x : Nat) (y : Nat) : Nat := x * y 
-- i dont think that i realised that 

#check newnewfunction  
end thing 


#check a 
#check newnewfunction 

-- when you declare a new namespace, it implicitly closes the old one. i.e if i did something like 
-- namespace foo 
-- def (functions..) 
-- namespace thing 
  -- this would be functionally equivalent to doing 
  -- namespace foo 
  -- def (functions)
  -- end foo 
  -- namespace thing 

-- the open command brings the shorter names that are a part of the module into the current context, and can be referred to as sutch. 
-- what would happen if you had two things that defined the same name in their namespaces? how would it behave 

namespace otherthing 
def a : Nat → Nat → Nat := λ x y => x * y 
def ab (x : Nat) (y : Nat) : Nat := x * y 
end otherthing 
namespace otherotherthing
def a : Nat → Nat → Nat := λ x y => x + y 
end otherotherthing 

open otherthing 
open otherotherthing 


#check a 
#check otherotherthing.a
-- so from this we can see that if there is a name clash then it returns the function that was opened first . 


