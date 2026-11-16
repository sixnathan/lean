def α : Type := Nat 
def β : Type := Bool 
def F : Type → Type := List 
def G : Type → Type → Type := Prod 
-- how does this work: we are redefining the types nat and book to be α and β and then we are defining F to be someting of Type → Type and the value of it is called a list, and then G is the Type → Type → Type \

#check α 
#check F α  
#check F 
#check F Nat 
#check G α  
#check G 
#check G α β 
#check G α Nat 

#check Prod α β 
#check Nat × Nat 
#check Prod Nat Nat 

#check List α 
#check List 
#check List Nat    
#check Type
#check Type 2 
#check Type 3 
#check Type 4  
#check Type 5 
#check Type 0   

-- what does it mean for something to be polymorphic ? 
-- List α should make sense for any type α no matter what type universe α lives in. This explains the typesignature of the function List : 
#check List 

-- here u is a variable ranging over type levels. The output of the #check command means that whenever α has type Type u, List α also has Type u. the function Prod is also polymorphic. 

#check Prod 

-- define polymorphic constants using something called the universe command 
universe u 

def i (α : Type u) : Type u := Prod α α 
#check i 


