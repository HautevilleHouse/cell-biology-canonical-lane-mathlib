import CellBiologyCanonicalLaneLean.CellBiologyObjects

namespace HautevilleHouse
namespace CellBiologyCanonicalLaneLean

structure AdmissibleClass where
  object : CellAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CellWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCanonicalLaneLean
end HautevilleHouse