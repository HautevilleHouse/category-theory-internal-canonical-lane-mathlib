import CatMathematicsInernalCanonicalLaneLean.CatBridgeLemmas

namespace HautevilleHouse
namespace CategoryTheoryInternalCanonicalLaneLean

def gateClosed (A : CatAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : CatAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CategoryTheoryInternalCanonicalLaneLean
end HautevilleHouse