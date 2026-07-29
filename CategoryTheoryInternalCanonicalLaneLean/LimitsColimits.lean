import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCanonicalLaneLean

structure LimitsColimitsPackage where
  J : Type u
  C : Type v
  diagram : J → C
  limit : C
  colimit : C
  limitUniversal : Prop
  colimitUniversal : Prop
  limitExists : Prop
  colimitExists : Prop

structure LimitsColimitsEvidence (P : LimitsColimitsPackage) where
  limitUniversalClosed : P.limitUniversal
  colimitUniversalClosed : P.colimitUniversal
  limitExistsClosed : P.limitExists
  colimitExistsClosed : P.colimitExists

def LimitsColimitsClosed (P : LimitsColimitsPackage) : Prop :=
  P.limitUniversal ∧ P.colimitUniversal ∧ P.limitExists ∧ P.colimitExists

theorem limits_colimits_closed_from_evidence (P : LimitsColimitsPackage) (E : LimitsColimitsEvidence P) : LimitsColimitsClosed P := by
  exact And.intro E.limitUniversalClosed (And.intro E.colimitUniversalClosed (And.intro E.limitExistsClosed E.colimitExistsClosed))

end CategoryTheoryInternalCanonicalLaneLean
end HautevilleHouse
