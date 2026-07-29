import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCanonicalLaneLean

structure PopulationDynamicsPDE (P : PrimitiveCellPopulation) (T : PrimitiveTimeDomain) (R : PrimitiveResourceField P T) where
  growthEquation : Prop
  diffusionCoefficient : Type
  advectionVelocity : Type
  logisticSource : Prop
  initialBoundaryCondition : Prop
  growthEquationClosed : growthEquation
  logisticSourceClosed : logisticSource
  initialBoundaryConditionClosed : initialBoundaryCondition

structure PopulationPDEEvidence (P : PrimitiveCellPopulation) (T : PrimitiveTimeDomain) (R : PrimitiveResourceField P T) (F : PopulationDynamicsPDE P T R) where
  growthEquationClosed : F.growthEquation
  logisticSourceClosed : F.logisticSource
  initialBoundaryConditionClosed : F.initialBoundaryCondition

def PopulationPDEClosed (P : PrimitiveCellPopulation) (T : PrimitiveTimeDomain) (R : PrimitiveResourceField P T) (F : PopulationDynamicsPDE P T R) : Prop :=
  F.growthEquation ∧ F.logisticSource ∧ F.initialBoundaryCondition

theorem population_pde_closed_from_evidence
    (P : PrimitiveCellPopulation) (T : PrimitiveTimeDomain) (R : PrimitiveResourceField P T)
    (F : PopulationDynamicsPDE P T R) (E : PopulationPDEEvidence P T R F) :
    PopulationPDEClosed P T R F := by
  exact And.intro E.growthEquationClosed (And.intro E.logisticSourceClosed E.initialBoundaryConditionClosed)

end CellBiologyCanonicalLaneLean
end HautevilleHouse
