import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCanonicalLaneLean

structure KanExtensionPackage (C D E : Type u) [Category C] [Category D] [Category E] where
  leftKan : (C ⥤ D) → (C ⥤ E) → D ⥤ E
  rightKan : (C ⥤ D) → (C ⥤ E) → D ⥤ E
  universalProperty : Prop
  pointwiseFormula : Prop

structure KanExtensionEvidence (K : KanExtensionPackage C D E) where
  universalPropertyClosed : K.universalProperty
  pointwiseFormulaClosed : K.pointwiseFormula

def KanExtensionClosed (K : KanExtensionPackage C D E) : Prop :=
  K.universalProperty ∧ K.pointwiseFormula

theorem kan_extension_closed_from_evidence (K : KanExtensionPackage C D E) (E : KanExtensionEvidence K) : KanExtensionClosed K := by
  exact And.intro E.universalPropertyClosed E.pointwiseFormulaClosed

end CategoryTheoryInternalCanonicalLaneLean
end HautevilleHouse