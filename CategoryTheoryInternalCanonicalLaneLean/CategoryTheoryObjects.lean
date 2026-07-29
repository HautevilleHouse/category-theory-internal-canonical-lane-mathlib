import Mathlib.CategoryTheory.Category.Basic
import Mathlib.CategoryTheory.Yoneda

open CategoryTheory

namespace HautevilleHouse
namespace CategoryTheoryInternalCanonicalLaneLean

structure SmallCategoryAdmittedObject (C : Type u) [Category.{v} C] where
  isLocallySmall : LocallySmall.{w} C
  yonedaFullyFaithful : FullyFaithful (yoneda : C ⥤ Presheaf C)

def Presheaf (C : Type u) [Category.{v} C] : Type (max u v) :=
  Cᵒᵖ ⥤ Type max v u

end CategoryTheoryInternalCanonicalLaneLean
end HautevilleHouse