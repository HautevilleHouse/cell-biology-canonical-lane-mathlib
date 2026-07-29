import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCanonicalLaneLean

structure PrimitiveCellPopulation where
  CellType : Type
  GrowthRate : Type
  CarryingCapacity : Prop
  InitialDensity : Prop
  CarryingCapacityTerm : CarryingCapacity
  InitialDensityTerm : InitialDensity

structure PrimitiveTimeDomain where
  Time : Type
  start : Time
  le : Time → Time → Prop
  intervalTopology : Prop
  hasInitialTime : Prop
  locallyFiniteBreakSet : Prop
  intervalTopologyTerm : intervalTopology
  hasInitialTimeTerm : hasInitialTime
  locallyFiniteBreakSetTerm : locallyFiniteBreakSet

structure PrimitiveResourceField (P : PrimitiveCellPopulation) (T : PrimitiveTimeDomain) where
  resource : T.Time → P.CellType → Prop
  resourceDynamics : Prop
  resourceCoupling : Prop
  resourceDynamicsTerm : resourceDynamics
  resourceCouplingTerm : resourceCoupling

structure PrimitiveInteractionMatrix (P : PrimitiveCellPopulation) where
  competitionCoefficient : P.CellType → P.CellType → Type
  mutualismCoefficient : P.CellType → P.CellType → Type
  predatorPreyCoupling : Prop
  competitionClosed : Prop
  mutualismClosed : Prop
  competitionClosedTerm : competitionClosed
  mutualismClosedTerm : mutualismClosed
  predatorPreyCouplingTerm : predatorPreyCoupling

end CellBiologyCanonicalLaneLean
end HautevilleHouse
