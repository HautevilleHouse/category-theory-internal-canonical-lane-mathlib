import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCanonicalLaneLean

structure MonadData (C : Type u) where
  functor : C → C
  unit : ∀ (X : C), X → functor X
  multiplication : ∀ (X : C), functor (functor X) → functor X
  unitLeft : ∀ (X : C), composition (unit X) (multiplication X) = id (functor X)
  unitRight : ∀ (X : C), composition (functor.map (unit X)) (multiplication X) = id (functor X)
  associativity : ∀ (X : C), composition (multiplication (functor X)) (multiplication X) = composition (functor.map (multiplication X)) (multiplication X)

structure MonadEvidence {C : Type u} (M : MonadData C) where
  unitLeftClosed : M.unitLeft
  unitRightClosed : M.unitRight
  associativityClosed : M.associativity

def MonadClosure {C : Type u} (M : MonadData C) : Prop :=
  M.unitLeft ∧ M.unitRight ∧ M.associativity

theorem monad_closed_evidence {C : Type u} {M : MonadData C} (E : MonadEvidence M) : MonadClosure M := by
  exact And.intro E.unitLeftClosed (And.intro E.unitRightClosed E.associativityClosed)

end HautevilleHouse
end CategoryTheoryInternalCanonicalLaneLean