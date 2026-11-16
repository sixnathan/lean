  -- what makes dependent type theory dependent? 
    -- types depend on parameters 
    -- List α depends on the type of argument α and this distinguishes 
      -- List Nat from List Rat 

-- the type of Vector α n depends on the the type of α which are of length n : Nat 


-- writing polymorphic functions 
  -- a function that takes in an arbitrary type α  

-- what is the type of cons: which takes in some variable of arbitrary type, and a list of the same type, and then cons' it to the head of the list. 

-- so i guess that this means that you need to define soemthing of : Type and and then use it. 

variable (α : Type) (a : α) (as : List α) 
-- in this we have defined a few types. is it possible to 

namespace useless 
variable (α : Type) 
variable (a : α) 
variable (as : List α) 
-- i assume that List is something defined. hmmmmmm what would it be: it would be thing of type hmmm im not even sure what the type of List is. 
end useless 

open useless  
def cons : List α := List.cons a as 
-- so this is using the previously defined variables from the namespace, and then it is implicitly passing them into the cons definition, but we do the returntype (i suppose that it could infer it surely?  
#check cons 

def cons2 := List.cons a as 
#check cons 
#check cons2 
-- so this is true: it is possible for the thing to infer the types for you instead of you specifying it (this makes sense) 
-- so what DOES type theory enforce: it enforces that we know the type of the answer: and in order to find that we delcare all of the types of things that contribute to its answer (right) ??? is that how it works. hmm under this then it means that if some variable is not used in the answer then it should not care about the type 

def testing (x y : Nat) := fun x y => x 
def othertest (x : Nat) (y : Nat) := fun x y => x 
-- i dont undersatnd why thsi is not working, or the types are unable to be inferred 

def othertesting (x y : Nat) := x * y 
#check othertesting 
-- this is just checking the type of the function 
#print othertesting 
def otherothertest : Nat → Nat → Nat := fun x y => x * y 
#print otherothertest 
#print othertesting 
-- so this is saying that they are of the same form. this is pretty cool i like this 
-- so it is able to infer the returntype if we specify the inputtypes, which is pretty cool i like it 


-- dependent function type: 
    -- dependent arrow type: given some α : Type and β : α → Type we could think of β as a fajmily of types over α : what does this mean? 

    -- a type β for each a : α 
    -- so is this saying that there is a mapping forall types α to things β hmmm that is interesting. 
    -- in other words, the type of the value returned by f depends on its input : this is what i was thinking: in order to make sure that the function is only slightly polymorphic: we need to specify some other mapping, i.e a map over types or something. i.e what if we wanted the operation to sometimes return Nat and sometimes Rat then we would need a mapping or something hmm  


    -- i dont think taht i really grok this part at al 

def β : Bool → Type 
| true => Nat 
| false => String 
#check β

-- what does this mean? what if i apply this to something? tbis is a function that takes in a boo

def β : Bool → 
| true => Nat 
| false => String 

