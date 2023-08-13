variable (f g h :Nat → Nat)
def larger : Prop :=
  ∀ a b : Nat, ∃ c : Nat, c ≥ b ∧ f c > g (c + a)
def smaller : Prop :=
  larger g f
def similar_larger : Prop :=
  smaller f g → false
def similar_smaller : Prop :=
  larger f g → false
def similar : Prop :=
  similar_larger f g ∧ similar_smaller f g

variable (α : Type) (R : α → α → Prop) (a b c : α)
def reflective : Prop :=  R a a
def symmetric : Prop :=  R a b → R b a
def transitive : Prop :=  R a b → R b c → R a c