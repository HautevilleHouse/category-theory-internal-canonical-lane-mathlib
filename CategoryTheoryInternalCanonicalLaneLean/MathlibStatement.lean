import category_theory.limits
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCanonicalLaneLean

open category_theory

structure LimitsPackage where
  has_terminal : Prop
  has_products : Prop
  has_equalizers : Prop
  has_pullbacks : Prop

def LimitsPackageClosed (P : LimitsPackage) : Prop :=
  P.has_terminal ∧ P.has_products ∧ P.has_equalizers ∧ P.has_pullbacks

structure ColimitsPackage where
  has_initial : Prop
  has_coproducts : Prop
  has_coequalizers : Prop
  has_pushouts : Prop

def ColimitsPackageClosed (P : ColimitsPackage) : Prop :=
  P.has_initial ∧ P.has_coproducts ∧ P.has_coequalizers ∧ P.has_pushouts

structure YonedaPackage where
  yoneda_embedding_full : Prop
  yoneda_lemma : Prop
  representable_functors : Prop

def YonedaPackageClosed (Y : YonedaPackage) : Prop :=
  Y.yoneda_embedding_full ∧ Y.yoneda_lemma ∧ Y.representable_functors

structure AdjointFunctorPackage where
  left_adjoint_exists : Prop
  right_adjoint_exists : Prop
  unit_counit_natural : Prop

def AdjointFunctorPackageClosed (A : AdjointFunctorPackage) : Prop :=
  A.left_adjoint_exists ∧ A.right_adjoint_exists ∧ A.unit_counit_natural

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  limitsNative : Bool
  colimitsNative : Bool
  yonedaNative : Bool
  adjointNative : Bool

end CategoryTheoryInternalCanonicalLaneLean
end HautevilleHouse