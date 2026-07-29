import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCanonicalLaneLean

structure AdmissibleCategoryObject where
  category : Type u
  limits : Prop
  colimits : Prop
  adjointFunctors : Prop
  yonedaLemma : Prop

structure AdmissibleClass where
  object : AdmissibleCategoryObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CategoryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoryTheoryInternalCanonicalLaneLean
end HautevilleHouse