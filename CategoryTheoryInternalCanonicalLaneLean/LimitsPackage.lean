import CategoryTheoryInternalCanonicalLaneLean.CategoryPackage

namespace HautevilleHouse
namespace CategoryTheoryInternalCanonicalLaneLean

structure LimitsPackage (C : CategoryPackage) where
  hasLimits : Prop
  hasColimits : Prop
  limitExists : Prop
  colimitExists : Prop

structure LimitsEvidence {C : CategoryPackage} (L : LimitsPackage C) where
  hasLimitsClosed : L.hasLimits
  hasColimitsClosed : L.hasColimits
  limitExistsClosed : L.limitExists
  colimitExistsClosed : L.colimitExists

def LimitsClosed {C : CategoryPackage} (L : LimitsPackage C) : Prop :=
  L.hasLimits ∧ L.hasColimits ∧ L.limitExists ∧ L.colimitExists

theorem limits_closed_from_evidence {C : CategoryPackage} (L : LimitsPackage C) (E : LimitsEvidence L) : LimitsClosed L :=
  And.intro E.hasLimitsClosed (And.intro E.hasColimitsClosed (And.intro E.limitExistsClosed E.colimitExistsClosed))

end CategoryTheoryInternalCanonicalLaneLean
end HautevilleHouse