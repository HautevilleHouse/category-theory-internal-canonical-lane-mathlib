import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCanonicalLaneLean

structure CategoryTheoryStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  categoryCoreConstructs : String
  categoryClosureClaim : String
  carriedRemainder : String

structure CategoryTheoryAdmittedObject where
  category : Type u
  limitsExist : Prop
  colimitsExist : Prop
  adjointPairsExist : Prop
  yonedaEmbeddingFullFaithful : Prop
  conclusion : limitsExist ∧ colimitsExist ∧ adjointPairsExist ∧ yonedaEmbeddingFullFaithful

structure CategoryWitnessClosed (O : CategoryTheoryAdmittedObject) : Prop where
  limitsClosed : O.limitsExist
  colimitsClosed : O.colimitsExist
  adjointClosed : O.adjointPairsExist
  yonedaClosed : O.yonedaEmbeddingFullFaithful

theorem category_theory_statement_internalized (O : CategoryTheoryAdmittedObject) :
    CategoryWitnessClosed O := by
  exact ⟨O.conclusion.1, O.conclusion.2.1, O.conclusion.2.2.1, O.conclusion.2.2.2⟩

end CategoryTheoryInternalCanonicalLaneLean
end HautevilleHouse