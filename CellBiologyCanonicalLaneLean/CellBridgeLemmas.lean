import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  admittedClosure A

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  unfold bridgeClosed
  exact admittedClosure A

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  unfold gateClosed
  exact A.gateWitness

end CellBiologyCanonicalLaneLean
end HautevilleHouse