import category_theory.Category
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCanonicalLaneLean

open category_theory

structure CategoryInternal where
  objectType : Type u₁
  morphismType : Type u₂
  identity : ∀ (X : objectType), morphismType
  composition : ∀ {X Y Z : objectType}, morphismType → morphismType → morphismType
  comp_assoc : ∀ {X Y Z W : objectType} (f : morphismType) (g : morphismType) (h : morphismType), composition (composition f g) h = composition f (composition g h)
  id_comp : ∀ {X Y : objectType} (f : morphismType), composition (identity X) f = f
  comp_id : ∀ {X Y : objectType} (f : morphismType), composition f (identity Y) = f

structure FunctorInternal where
  source : CategoryInternal
  target : CategoryInternal
  objectMap : source.objectType → target.objectType
  morphismMap : source.morphismType → target.morphismType
  respects_identity : ∀ (X : source.objectType), morphismMap (source.identity X) = target.identity (objectMap X)
  respects_comp : ∀ {X Y Z : source.objectType} (f : source.morphismType) (g : source.morphismType), morphismMap (source.comp f g) = target.comp (morphismMap f) (morphismMap g)

structure AdmittedCategory where
  carrier : CategoryInternal
  has_limits : Prop
  has_colimits : Prop
  is_cartesian_closed : Prop
  yoneda_embedding_full : Prop

structure CategoryObject where
  category : AdmittedCategory
  conclusion : category.is_cartesian_closed ∧ category.yoneda_embedding_full

def CategoryWitnessClosed (O : CategoryObject) : Prop :=
  O.conclusion.1 ∧ O.conclusion.2

end CategoryTheoryInternalCanonicalLaneLean
end HautevilleHouse