import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCanonicalLaneLean

structure YonedaLemmaPackage where
  C : Type u
  hom : C → C → Type v
  object : C
  functor : C → Type v
  yonedaEmbedding : Prop
  yonedaLemmaStatement : Prop
  naturality : Prop

structure YonedaLemmaEvidence (P : YonedaLemmaPackage) where
  yonedaEmbeddingClosed : P.yonedaEmbedding
  yonedaLemmaStatementClosed : P.yonedaLemmaStatement
  naturalityClosed : P.naturality

def YonedaLemmaClosed (P : YonedaLemmaPackage) : Prop :=
  P.yonedaEmbedding ∧ P.yonedaLemmaStatement ∧ P.naturality

theorem yoneda_lemma_closed_from_evidence (P : YonedaLemmaPackage) (E : YonedaLemmaEvidence P) : YonedaLemmaClosed P := by
  exact And.intro E.yonedaEmbeddingClosed (And.intro E.yonedaLemmaStatementClosed E.naturalityClosed)

end CategoryTheoryInternalCanonicalLaneLean
end HautevilleHouse
