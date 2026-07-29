import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCanonicalLaneLean

structure UniversalConstructionPackage (A : AdmissibleClass) where
  object : Type u
  property : (Type u → Prop) → Prop
  universalArrow : (∀ (X : Type u), property X) → object
  uniqueness : Prop
  existence : Prop
  universalMapping : Prop

structure UniversalConstructionEvidence {A : AdmissibleClass} (U : UniversalConstructionPackage A) where
  uniquenessClosed : U.uniqueness
  existenceClosed : U.existence
  universalMappingClosed : U.universalMapping

def UniversalConstructionClosed {A : AdmissibleClass} (U : UniversalConstructionPackage A) : Prop :=
  U.uniqueness ∧ U.existence ∧ U.universalMapping

theorem universal_construction_closed_from_evidence {A : AdmissibleClass} (U : UniversalConstructionPackage A)
    (E : UniversalConstructionEvidence U) : UniversalConstructionClosed U := by
  exact And.intro E.uniquenessClosed (And.intro E.existenceClosed E.universalMappingClosed)

end CategoryTheoryInternalCanonicalLaneLean
end HautevilleHouse