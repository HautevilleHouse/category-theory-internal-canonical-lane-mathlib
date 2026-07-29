import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryInternalCanonicalLaneLean.CategoryTheoryObjects

namespace HautevilleHouse
namespace CategoryTheoryInternalCanonicalLaneLean

structure Monad (C : Category) where
  functor : Functor C C
  unit : NaturalTransformation (Functor.id C) functor
  multiplication : NaturalTransformation (comp functor functor) functor
  left_unit : ∀ (X : C.Obj), comp (unit.components X) (multiplication.components (functor.obj X)) = C.id (functor.obj X)
  right_unit : ∀ (X : C.Obj), comp (functor.map (unit.components X)) (multiplication.components X) = C.id (functor.obj X)
  associativity : ∀ (X : C.Obj), comp (multiplication.components (functor.obj X)) (multiplication.components X) = comp (functor.map (multiplication.components X)) (multiplication.components X)

structure MonadPackage (C : Category) where
  monad : Monad C
  monadLaws : Prop
  monadLawsClosed : monadLaws

def MonadClosed {C : Category} (P : MonadPackage C) : Prop :=
  P.monadLaws

theorem monad_closed_from_evidence {C : Category} (P : MonadPackage C) (E : P.monadLaws) : MonadClosed P :=
  E

end CategoryTheoryInternalCanonicalLaneLean
end HautevilleHouse