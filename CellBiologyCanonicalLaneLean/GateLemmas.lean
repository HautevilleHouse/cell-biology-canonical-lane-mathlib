import cell-biology-canonical-lane-lean.BridgeLemmas

namespace HautevilleHouse
namespace CellBiologyCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end CellBiologyCanonicalLaneLean
end HautevilleHouse
