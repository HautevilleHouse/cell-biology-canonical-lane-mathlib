import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCanonicalLaneLean

structure EvolutionaryGameDynamics (P : PrimitiveCellPopulation) where
  payoffMatrix : P.CellType → P.CellType → Type
  replicatorEquation : Prop
  fitnessLandscape : Prop
  evolutionarilyStableState : Prop
  payoffMatrixClosed : payoffMatrix
  replicatorEquationClosed : replicatorEquation
  fitnessLandscapeClosed : fitnessLandscape
  evolutionarilyStableStateClosed : evolutionarilyStableState

structure GameDynamicsEvidence (P : PrimitiveCellPopulation) (G : EvolutionaryGameDynamics P) where
  replicatorEquationClosed : G.replicatorEquation
  fitnessLandscapeClosed : G.fitnessLandscape
  evolutionarilyStableStateClosed : G.evolutionarilyStableState

def GameDynamicsClosed (P : PrimitiveCellPopulation) (G : EvolutionaryGameDynamics P) : Prop :=
  G.replicatorEquation ∧ G.fitnessLandscape ∧ G.evolutionarilyStableState

theorem game_dynamics_closed_from_evidence
    (P : PrimitiveCellPopulation) (G : EvolutionaryGameDynamics P) (E : GameDynamicsEvidence P G) :
    GameDynamicsClosed P G := by
  exact And.intro E.replicatorEquationClosed (And.intro E.fitnessLandscapeClosed E.evolutionarilyStableStateClosed)

end CellBiologyCanonicalLaneLean
end HautevilleHouse
