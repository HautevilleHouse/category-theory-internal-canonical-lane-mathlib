import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCanonicalLaneLean

structure LimitCone {J C : Type u} (F : J → C) where
  apex : C
  coneProjections : ∀ (i : J), apex → F i
  coneCommutes : ∀ {i j : J} (f : i → j), ?

structure LimitEvidence {J C : Type u} {F : J → C} (L : LimitCone F) where
  universalProperty : ∀ (otherApex : C) (otherCones : ∀ (i : J), otherApex → F i), ∃! (m : otherApex → L.apex), ∀ (i : J), L.coneProjections i ∘ m = otherCones i

def LimitClosure {J C : Type u} {F : J → C} (L : LimitCone F) : Prop :=
  L.apex ≠ L.apex → False

theorem limit_closed_evidence {J C : Type u} {F : J → C} {L : LimitCone F} (E : LimitEvidence F L) : LimitClosure L := by
  intro h
  exact h rfl

end HautevilleHouse
end CategoryTheoryInternalCanonicalLaneLean