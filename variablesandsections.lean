def compose (α β γ : Type) (g : β → γ) (f : α → β) (x : α) := g ( f x ) 
#check compose 

variable (α β γ : Type ) 

def dotwice (f : α → β) (g : β → γ) (x : α) := g (f x) 
-- ok so it is possible to make things more compact. wait i wonder how it is different from doing something like: 


def thing  := Type 
def otherthing := Type 

#print compose 
#check compose 
-- this is interesting: this does something different from #check, i wonder how i could use this for something hmm. 

-- variable command instructs lean to insert the declared variables as vound variables in definitions that refer to them by name. lean can figure out things like this, and we can proceeed as though things like α β γ δ λ are fixed objects when we write definitions and things of the nature. 

-- when declared in this way, the variable stays in scope until the end of hte file. however you could limit the scope of the varaible. 
-- variables are things that show that: there exists some variable of this type in the following thing that i would like to use in definitions (i think) 

section useful 
variable (α β γ : Type) 
def dotwicee (f : α → α) (x : α) := f (f x) 
end useful 

-- so it is possible to do something like declare a variable in a part of a section, and then use it during that section, and then end it. this is just shorthand right? anything that you coudl write using this other method you could also write out with the full definition right? 


-- so section defines variables of some arbitrary type and then converts between them or something. it must be internall consistent: i



