import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCanonicalLaneLean

structure AdjointPair {C D : Type u} (F : C → D) (G : D → C) where
  unit : ∀ (X : C), ? → G (F X)
  counit : ∀ (Y : D), F (G Y) → ?
  triangleLeft : ∀ (X : C), ?
  triangleRight : ∀ (Y : D), ?

structure AdjointFunctorEvidence {C D : Type u} (F : C → D) (G : D → C) (adj : AdjointPair F G) where
  closedCondition : Prop

def AdjointFunctorClosure {C D : Type u} (F : C → D) (G : D → C) (adj : AdjointPair F G) : Prop :=
  adj.unit ∧ adj.counit ∧ adj.triangleLeft ∧ adj.triangleRight

theorem adjoint_functor_closed_evidence {C D : Type u} {F : C → D} {G : D → C} {adj : AdjointPair F G} (E : AdjointFunctorEvidence F G adj) : AdjointFunctorClosure F G adj := by
  exact And.intro adj.unit (And.intro adj.counit (And.intro adj.triangleLeft adj.triangleRight))

end HautevilleHouse
end CategoryTheoryInternalCanonicalLaneLean