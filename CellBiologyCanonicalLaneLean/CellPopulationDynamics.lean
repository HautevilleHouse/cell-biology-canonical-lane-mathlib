import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCanonicalLaneLean

structure CellPopulationPackage where
  populationSize : Nat
  growthRate : Float
  carryingCapacity : Float
  birthRate : Float
  deathRate : Float
  logisticEquation : Prop

structure CellPopulationEvidence (P : CellPopulationPackage) where
  logisticEquationClosed : P.logisticEquation

def CellPopulationClosed (P : CellPopulationPackage) : Prop :=
  P.logisticEquation

theorem cell_population_closed_from_evidence (P : CellPopulationPackage)
    (E : CellPopulationEvidence P) : CellPopulationClosed P := by
  exact E.logisticEquationClosed

end CellBiologyCanonicalLaneLean
end HautevilleHouse