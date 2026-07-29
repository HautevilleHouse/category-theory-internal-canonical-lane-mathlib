import CatMathematicsInernalCanonicalLaneLean.CatAdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCanonicalLaneLean

def bridgeClosed (A : CatAdmissibleClass) : Prop :=
  CatWitnessClosed A.object

theorem bridge_from_admissible_class (A : CatAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CategoryTheoryInternalCanonicalLaneLean
end HautevilleHouse