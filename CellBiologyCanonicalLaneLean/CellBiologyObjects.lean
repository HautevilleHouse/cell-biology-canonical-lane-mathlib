import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCanonicalLaneLean

structure CellState where
  carrier : Type
  populationDensity : carrier → ℝ
  growthRate : ℝ
  carryingCapacity : ℝ

structure CellAdmittedObject where
  state : CellState
  logisticGrowthModel : Prop
  evolutionaryStable : Prop
  equilibriumReached : Prop
  conclusion : equilibriumReached

def CellWitnessClosed (O : CellAdmittedObject) : Prop :=
  O.equilibriumReached

end CellBiologyCanonicalLaneLean
end HautevilleHouse