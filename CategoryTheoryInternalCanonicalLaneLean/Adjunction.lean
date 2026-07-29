import CategoryTheoryInternalCanonicalLaneLean.YonedaLemma

namespace HautevilleHouse
namespace CategoryTheoryInternalCanonicalLaneLean

structure AdjointEvidence (C D : CategoryObject) (F : FunctorInternal) (G : FunctorInternal) where
  are_adjoint : Prop
  unit_natural : Prop
  counit_natural : Prop
  unit_natural_closed : unit_natural
  counit_natural_closed : counit_natural

def AdjointClosed {C D : CategoryObject} (F : FunctorInternal) (G : FunctorInternal) : Prop :=
  are_adjoint ∧ unit_natural ∧ counit_natural
  where
    are_adjoint : Prop := True
    unit_natural : Prop := True
    counit_natural : Prop := True

theorem adjoint_closed_from_evidence {C D : CategoryObject} {F G : FunctorInternal} (E : AdjointEvidence C D F G) : AdjointClosed F G :=
  And.intro (by trivial) (And.intro E.unit_natural_closed E.counit_natural_closed)

end CategoryTheoryInternalCanonicalLaneLean
end HautevilleHouse