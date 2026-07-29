namespace HautevilleHouse
namespace CategoryTheoryInternalCanonicalLaneLean

structure CategoryPackage where
  Obj : Type u
  Hom : Obj → Obj → Type v
  id : (X : Obj) → Hom X X
  comp : {X Y Z : Obj} → Hom X Y → Hom Y Z → Hom X Z
  id_left : Prop
  id_right : Prop
  assoc : Prop

structure CategoryEvidence (C : CategoryPackage) where
  id_leftClosed : C.id_left
  id_rightClosed : C.id_right
  assocClosed : C.assoc

def CategoryClosed (C : CategoryPackage) : Prop :=
  C.id_left ∧ C.id_right ∧ C.assoc

theorem category_closed_from_evidence (C : CategoryPackage) (E : CategoryEvidence C) : CategoryClosed C :=
  And.intro E.id_leftClosed (And.intro E.id_rightClosed E.assocClosed)

end CategoryTheoryInternalCanonicalLaneLean
end HautevilleHouse