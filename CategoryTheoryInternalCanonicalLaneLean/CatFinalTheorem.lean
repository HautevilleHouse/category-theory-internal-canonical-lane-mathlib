import CatMathematicsInernalCanonicalLaneLean.CatGateLemmas

namespace HautevilleHouse
namespace CategoryTheoryInternalCanonicalLaneLean

def ConstrainedCategoryInternalClosure (A : CatAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_category_internal_endgame (A : CatAdmissibleClass) :
    ConstrainedCategoryInternalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoryTheoryInternalCanonicalLaneLean
end HautevilleHouse