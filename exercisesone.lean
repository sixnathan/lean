variable (p q r : Prop) 

theorem implication (hpq : p → q) (hp : p) : q := 
  hpq hp 


example : p ∧ q ↔ q ∧ p :=  
Iff.intro 
-- here is deriving the proof of the t → s where t is p ∧ q and s is q ∧ p 
  (λ h : p ∧ q => And.intro h.right h.left )
-- here is s → t 
  (λ h : q ∧ p => And.intro h.right h.left ) 

example : p ∨ q ↔ q ∨ p := 
  Iff.intro
  -- this is proof that p ∨ q → q ∨ p 
  (λ h : p ∨ q => Or.elim h 
    (λ hp : p => Or.inr hp) 
    (λ hq : q => Or.inl hq))
  -- this is proof that q ∨ p → p → q  
  (λ h : q ∨ p => Or.elim h 
    (λ hq : q => Or.inr hq)
    (λ hp : p => Or.inl hp))


example : (p ∧ q) ∧ r ↔ p ∧ (q ∧ r) := 
  Iff.intro 
  (
    -- here we need to prove that (p ∧ q) ∧ r → p ∧ (q ∧ r) 
      -- this could be done using auxilliary subgoals by having proofs so here we can take the left side as assumptions or something. 
    λ h : (p ∧ q) ∧ r => 
    have hr : r := h.right 
    have hpq : p ∧ q := h.left  
    have hp : p := hpq.left 
    have hq : q := hpq.right 
    ⟨hp, ⟨hq, hr⟩⟩
    )

  ( λ h : p ∧ (q ∧ r) => 
    have hp : p := h.left 
    have hqr : q ∧ r := h.right 
    have hq := hqr.left
    have hr := hqr.right 
    ⟨⟨hp, hq⟩, hr⟩ 
    )

/- 
example : (p ∨ q) ∨ r ↔ p ∨ (q ∨ r) :=   
  -/   


example : p ∧ (q ∨ r) ↔ (p ∧ q) ∨ (p ∧ r) := 
  Iff.intro (  
    λ h :  p ∧ (q ∨ r) =>   
    have hp : p := h.left  
    have hpr : q ∨ r := h.right 
    Or.elim hpr (
    λ hq : q => Or.inl ⟨hp, hq⟩)
    (λ hr : r => Or.inr ⟨hp, hr⟩)
  )
    (
    λ h : (p ∧ q) ∨ (p ∧ r) =>
    Or.elim h 
    (λ hpq : p ∧ q => 
    have hp : p := hpq.left 
    have hq : q := hpq.right 
    ⟨hp, Or.inl hq⟩) 
    
    (λ hpr : p ∧ r => 
    have hp : p := hpr.left 
    have hr : r := hpr.right 
    ⟨hp, Or.inr hr⟩) 
    ) 
  



