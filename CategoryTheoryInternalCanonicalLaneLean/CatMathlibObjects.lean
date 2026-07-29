import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCanonicalLaneLean

structure Category where
  Ob : Type u
  Mor : Ob → Ob → Type v
  identity : ∀ X : Ob, Mor X X
  compose : ∀ {X Y Z : Ob}, Mor X Y → Mor Y Z → Mor X Z
  assoc : ∀ {W X Y Z : Ob} (f : Mor W X) (g : Mor X Y) (h : Mor Y Z), compose (compose f g) h = compose f (compose g h)
  idLeft : ∀ {X Y : Ob} (f : Mor X Y), compose (identity X) f = f
  idRight : ∀ {X Y : Ob} (f : Mor X Y), compose f (identity Y) = f

structure CatAdmittedObject where
  cat : Category
  hasLimits : Prop
  complete : Prop
  conclusion : complete

def CatWitnessClosed (O : CatAdmittedObject) : Prop :=
  O.complete

end CategoryTheoryInternalCanonicalLaneLean
end HautevilleHouse