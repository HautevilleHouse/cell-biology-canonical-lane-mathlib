import cell-biology-canonical-lane-lean.CellAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  cellWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end CellBiologyCanonicalLaneLean
end HautevilleHouse
