import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCanonicalLaneLean

structure CellAdmittedObject where
  cellPopulation : Type
  cellFitness : Prop
  environmentState : Prop
  controlledGrowth : Prop

def cellWitnessClosed (O : CellAdmittedObject) : Prop :=
  O.controlledGrowth

end CellBiologyCanonicalLaneLean
end HautevilleHouse
