import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCanonicalLaneLean

structure AdjointFunctorsPackage where
  C : Type u
  D : Type v
  F : C → D
  G : D → C
  leftAdjoint : Prop
  rightAdjoint : Prop
  unitNatural : Prop
  counitNatural : Prop
  triangleIdentities : Prop

structure AdjointFunctorsEvidence (P : AdjointFunctorsPackage) where
  leftAdjointClosed : P.leftAdjoint
  rightAdjointClosed : P.rightAdjoint
  unitNaturalClosed : P.unitNatural
  counitNaturalClosed : P.counitNatural
  triangleIdentitiesClosed : P.triangleIdentities

def AdjointFunctorsClosed (P : AdjointFunctorsPackage) : Prop :=
  P.leftAdjoint ∧ P.rightAdjoint ∧ P.unitNatural ∧ P.counitNatural ∧ P.triangleIdentities

theorem adjoint_functors_closed_from_evidence (P : AdjointFunctorsPackage) (E : AdjointFunctorsEvidence P) : AdjointFunctorsClosed P := by
  exact And.intro E.leftAdjointClosed (And.intro E.rightAdjointClosed (And.intro E.unitNaturalClosed (And.intro E.counitNaturalClosed E.triangleIdentitiesClosed)))

end CategoryTheoryInternalCanonicalLaneLean
end HautevilleHouse
