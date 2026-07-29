import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCanonicalLaneLean

structure ReplicatorDynamic where
  payoffs : List (List Float)
  playerFrequencies : List Float
  equilibriumReached : Prop

structure EvolutionaryGamePackage where
  dynamics : ReplicatorDynamic
  nashEquilibrium : Prop
  evolutionaryStability : Prop

structure EvolutionaryGameEvidence (E : EvolutionaryGamePackage) where
  nashEquilibriumClosed : E.nashEquilibrium
  evolutionaryStabilityClosed : E.evolutionaryStability

def EvolutionaryGameClosed (E : EvolutionaryGamePackage) : Prop :=
  E.nashEquilibrium ∧ E.evolutionaryStability

theorem evolutionary_game_closed_from_evidence
    (E : EvolutionaryGamePackage) (Ev : EvolutionaryGameEvidence E) :
    EvolutionaryGameClosed E := by
  exact And.intro Ev.nashEquilibriumClosed Ev.evolutionaryStabilityClosed

end CellBiologyCanonicalLaneLean
end HautevilleHouse