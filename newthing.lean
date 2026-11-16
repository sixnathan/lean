def m : Nat := 1 
def n : Nat := 0  

def b1 : Bool := true 
def b2 : Bool := false 

#check m 
#check n 
#check m + 0 
#check m + n 
#check m * (n + 0) 
#check b1 
#check b1 && b2 
#eval not b1 
#check b1 || b2 
#eval b1 || b2 
#eval 5 + 4 
#check 5 + 4  
#check true 
#check Bool.true

-- so the two keywords for this are: #check and #eval, and there are also the logical operators && and || and the method to define something is def (name) : (type) := (value) 

-- the method to check somethings type is #check and the method to check something's value is through #eval 

#check Nat -> Nat 

def thing : Int := 12341234 
def otherthing : Nat := 1234 

#eval thing + otherthing 
#check thing + otherthing   

#check Nat -> Nat 
-- why does it do Nat -> Nat : Type what does that mean? does it mean that the type of a fucntion Nat -> Nat is of type of itself? like there is no other method to define it

#check Nat → Nat 

-- so you could shorten it by doing → or -> 
#check Nat × Nat 

#check Prod Nat Nat 

-- for this one you could do × or you the prefix notation Prod. the first one is backslash times and the first one is backslash to  

#check (Nat × Nat) → Nat 
#check (Nat → Nat) → Nat 
#check Nat → Nat → Nat 
-- how are those two different? what does it mean for something to be (Nat → Nat) → Nat versus something like Nat → Nat → Nat 

-- so there is some currying or soething 

#check  (Nat → Nat → Nat) = Nat → (Nat → Nat) 
-- i wonder if this makes sense at all. 
#check (Nat → Nat) → Nat 
#check (Nat × Nat) → Nat 


#check Nat.succ 
-- it says that the type of this is Nat → Nat, which makes sense, this is the function Nat.succ, which takes in a natural number, and returns its successor (i.e original number + 1) which is itself a natural number. 

#check (0, 1) 
-- this gives the type Nat × Nat, which makes sense. the cartesian product of two things is the same as an ordered tuple of things from the sets which they are taken from (i wonder how it knows the sets from which they are taken? why does it not assume that they are from Int 

#check (-1, 0) 
-- so im wondering why it inferred that -1 was Int and 0 is Nat

#check Nat.add 
-- this hmmmm this is something that takes in two natural numbers or this is something that this is the same as Nat → (Nat → Nat) which is to say that it returns a function that is Nat → Nat 

#check Nat.add 1 
-- i suppose that this makes sense: it takes in two arguments and then returns it. 

#check Nat.succ 2 
-- the type of this is Nat 
#eval Nat.succ 2 
-- this makes sense. 

#check (1234, -1234, 1.1234) 
-- so it has some defined type that is float. so far we know of float int nat etc. i wonder if i do soething like 1.5 it would return that it is rational number 
#check 2/5 
-- huh, it says that it is a natural number. this is super odd. 

#check (2/5 : Rat) 
-- how does this work: we have assigned the type to something like this hmm how does this work
#check (2/5 : Float) 

#check 2/5 : Rat 
-- so the () around the declaration of the thing are required : i wonder why this is the case 

#check Nat.add 5 3 
-- this makes sense: it is taking in two natural numbers and it is returning something of the same type. i wonder if i could reassign it to something else however 

#check (Nat.add 5 3 : Rat) 
-- yes i can: it seems that what is required in order for me to do this is that I 

#check (5, 9).snd 
-- this is interesting: the .snd or .fst thing on a cartesian product of two things gives the second element: and then you coudl correspondingly do the .(number of element which you would like to fetch) on a cartesian product of any length that you would like in order to do something. 

#eval Nat.succ 2 
-- the type of this is Nat, and the type of Nat.succ is Nat → Nat, and it takes in a Natural nubmer and adds one to it 

#check (5, 9).2 

#check (5, 6, 7, 8).3 
-- oh this is not allowed. 
-- wait this is not the case 

#check (5, 6, 7, 8).2.1  
-- this is the proper method of doing it: this makes it such that you  


#check Nat → Nat  
#check Nat → Nat 

-- wait so i could use or \ r what is this you are able to do the unicode arrow by doing soemthing 

#check Nat → Nat 

def α : Nat := 2134 

#check α 

#eval Nat.succ 2 

#eval Nat.add 3 4 

-- the type of Nat.add is Nat → Nat → Nat × 
#check Nat × Nat 

#eval (1,2,4,5,6,7).2.2.2.1 

#check Nat 

-- type theory: types themselves are objects: each object must have a type: 


#check Bool 


#check Nat → Bool 

-- this is a function that maps from the natural numbers to the booleans
#check 2345 > 5  
-- i wonder why the type of this is Natural numbers, is it possible to cast into some other type of thing? 

#check (1234 > 35 : Bool) 
-- what does decide 1234 > 35 : mean? i mean like how does this wokr? 
#eval 1234 > 35

#check 1234 > 5 
-- what is the type of Prop: what does that mean? 

-- ok so it is clear that we can do lots and lots of stuff with types  


def a : Type := Bool  
def β :Type := Nat 

def F : Type -> Type := List 
def thilng : a := false 

#check thilng 
#eval thilng && thilng 

-- so it seems that we are able to inherit the logical operations from

