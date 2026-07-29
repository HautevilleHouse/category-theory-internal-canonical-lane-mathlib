import CatMathematicsInernalCanonicalLaneLean.CatMathlibObjects

namespace HautevilleHouse
namespace CategoryTheoryInternalCanonicalLaneLean

structure CatAdmissibleClass where
  object : CatAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def catAdmittedClosure (A : CatAdmissibleClass) : Prop :=
  CatWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoryTheoryInternalCanonicalLaneLean
end HautevilleHouse