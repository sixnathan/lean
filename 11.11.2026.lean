def α : Type := Bool 
def β : Type := Nat  
def F : Type -> Type := List  
-- i dont really understand this last one: what is this saying: this is saying that we are allowed to create some object or something 

def H : Type → Type := List 
def G : Type → Type → Type := Prod 

-- what does this mean? i ahve no idea how this tingw orks, hmmm how does this thing work. 


#check α  
#check β 
#check F 
#check G


#check G α 
-- what is going on here: 
-- what does it mean for something to be an expected type versus teh actual type 

-- so what is a list, it is something that takes in something of one type 


#check G Nat 
-- we are defining as something that takes in something of one type and outputs osmething of another type: im really not sure about how this works: 


#check Prod Nat Nat 
#check Nat → Nat 
#check Nat × Nat 

def amp : Type := Nat 

#check List α 
#check List 

#check List α 
#check List Nat 

#check List Bool 
-- this makes some sense, i think tahto 
#check "how are you" 
-- this is of the type string. 

def double : Nat → Nat := fun x => x + x 

#check double 
-- this is defining a function that is called double, and takes in a natural number and returns a natural nubmer and we are diefinig how it works 

def thing : Nat → Nat → Nat := fun x y => x * y 

#check thing

#eval thing 3 4 
