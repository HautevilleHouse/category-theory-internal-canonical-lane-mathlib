import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCanonicalLaneLean

structure AdjointFunctorPackage where
  leftAdjointExists : Prop
  rightAdjointExists : Prop
  unitNatural : Prop
  counitNatural : Prop
  triangleIdentities : Prop

structure AdjointFunctorEvidence (A : AdjointFunctorPackage) where
  leftAdjointExistsClosed : A.leftAdjointExists
  rightAdjointExistsClosed : A.rightAdjointExists
  unitNaturalClosed : A.unitNatural
  counitNaturalClosed : A.counitNatural
  triangleIdentitiesClosed : A.triangleIdentities

def AdjointFunctorClosed (A : AdjointFunctorPackage) : Prop :=
  A.leftAdjointExists ∧ A.rightAdjointExists ∧ A.unitNatural ∧ A.counitNatural ∧ A.triangleIdentities

theorem adjoint_functor_closed_from_evidence (A : AdjointFunctorPackage)
    (E : AdjointFunctorEvidence A) : AdjointFunctorClosed A := by
  exact And.intro E.leftAdjointExistsClosed
    (And.intro E.rightAdjointExistsClosed
      (And.intro E.unitNaturalClosed
        (And.intro E.counitNaturalClosed E.triangleIdentitiesClosed)))

end CategoryTheoryInternalCanonicalLaneLean
end HautevilleHouse