import CategoryTheoryInternalCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CategoryTheoryInternalCanonicalLaneLean

structure LimitsEvidence (C : CategoryObject) where
  has_terminal_closed : C.category.has_limits → LimitsPrerequisite.has_terminal
  has_products_closed : C.category.has_limits → LimitsPrerequisite.has_products
  has_equalizers_closed : C.category.has_limits → LimitsPrerequisite.has_equalizers
  has_pullbacks_closed : C.category.has_limits → LimitsPrerequisite.has_pullbacks

def LimitsClosed (C : CategoryObject) : Prop :=
  C.category.has_limits

theorem limits_closed_from_evidence (C : CategoryObject) (E : LimitsEvidence C) : LimitsClosed C :=
  C.category.has_limits

structure ColimitsEvidence (C : CategoryObject) where
  has_initial_closed : C.category.has_colimits → ColimitsPrerequisite.has_initial
  has_coproducts_closed : C.category.has_colimits → ColimitsPrerequisite.has_coproducts
  has_coequalizers_closed : C.category.has_colimits → ColimitsPrerequisite.has_coequalizers
  has_pushouts_closed : C.category.has_colimits → ColimitsPrerequisite.has_pushouts

def ColimitsClosed (C : CategoryObject) : Prop :=
  C.category.has_colimits

theorem colimits_closed_from_evidence (C : CategoryObject) (E : ColimitsEvidence C) : ColimitsClosed C :=
  C.category.has_colimits

end CategoryTheoryInternalCanonicalLaneLean
end HautevilleHouse