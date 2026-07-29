import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryInternalCanonicalLaneLean.AdjointFunctors
import HautevilleHouse.CategoryTheoryInternalCanonicalLaneLean.LimitsColimits
import HautevilleHouse.CategoryTheoryInternalCanonicalLaneLean.YonedaLemma

namespace HautevilleHouse
namespace CategoryTheoryInternalCanonicalLaneLean

def ConstrainedCategoryTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_category_theory_endgame (A : AdmissibleClass) : ConstrainedCategoryTheoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoryTheoryInternalCanonicalLaneLean
end HautevilleHouse
