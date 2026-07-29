import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCanonicalLaneLean

structure MonoidalCategoryPackage where
  tensorProductExistence : Prop
  associativityNatural : Prop
  leftUnitorNatural : Prop
  rightUnitorNatural : Prop
  pentagonIdentity : Prop
  triangleIdentity : Prop

structure MonoidalCategoryEvidence (M : MonoidalCategoryPackage) where
  tensorProductExistenceClosed : M.tensorProductExistence
  associativityNaturalClosed : M.associativityNatural
  leftUnitorNaturalClosed : M.leftUnitorNatural
  rightUnitorNaturalClosed : M.rightUnitorNatural
  pentagonIdentityClosed : M.pentagonIdentity
  triangleIdentityClosed : M.triangleIdentity

def MonoidalCategoryClosed (M : MonoidalCategoryPackage) : Prop :=
  M.tensorProductExistence ∧ M.associativityNatural ∧ M.leftUnitorNatural ∧
  M.rightUnitorNatural ∧ M.pentagonIdentity ∧ M.triangleIdentity

theorem monoidal_category_closed_from_evidence (M : MonoidalCategoryPackage)
    (E : MonoidalCategoryEvidence M) : MonoidalCategoryClosed M := by
  exact And.intro E.tensorProductExistenceClosed
    (And.intro E.associativityNaturalClosed
      (And.intro E.leftUnitorNaturalClosed
        (And.intro E.rightUnitorNaturalClosed
          (And.intro E.pentagonIdentityClosed E.triangleIdentityClosed))))

end CategoryTheoryInternalCanonicalLaneLean
end HautevilleHouse