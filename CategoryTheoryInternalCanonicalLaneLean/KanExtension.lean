import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCanonicalLaneLean

structure KanExtensionData {A B C : Type u} (F : A → B) (G : A → C) where
  extension : B → C
  naturalTransformation : ∀ (X : A), extension (F X) → G X
  universalProperty : ∀ (H : B → C) (nt : ∀ (X : A), H (F X) → G X), ∃! (m : ∀ (Y : B), extension Y → H Y), ∀ (X : A), nt X = m (F X) ∘ naturalTransformation X

structure KanExtensionEvidence {A B C : Type u} {F : A → B} {G : A → C} (K : KanExtensionData F G) where
  universalClosed : K.universalProperty

def KanExtensionClosure {A B C : Type u} {F : A → B} {G : A → C} (K : KanExtensionData F G) : Prop :=
  K.universalProperty

theorem kan_extension_closed_evidence {A B C : Type u} {F : A → B} {G : A → C} {K : KanExtensionData F G} (E : KanExtensionEvidence F G K) : KanExtensionClosure K := by
  exact E.universalClosed

end HautevilleHouse
end CategoryTheoryInternalCanonicalLaneLean