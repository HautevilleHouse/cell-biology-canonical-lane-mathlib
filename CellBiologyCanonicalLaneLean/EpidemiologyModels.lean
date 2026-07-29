import cell-biology-canonical-lane-lean.EvolutionaryGameTheory

namespace HautevilleHouse
namespace CellBiologyCanonicalLaneLean

structure CompartmentalModel where
  susceptible : ℕ
  infected : ℕ
  recovered : ℕ
  transmissionRate : ℝ
  recoveryRate : ℝ
  sirEquations : Prop
  basicReproductiveNumber : ℝ
  herdImmunityThreshold : ℝ

structure CompartmentalModelEvidence (M : CompartmentalModel) where
  sirEquationsClosed : M.sirEquations
  basicReproductiveNumberValid : M.basicReproductiveNumber > 0

def CompartmentalModelClosed (M : CompartmentalModel) : Prop :=
  M.sirEquations ∧ M.basicReproductiveNumber > 0

theorem compartmental_model_closed_from_evidence (M : CompartmentalModel)
    (E : CompartmentalModelEvidence M) : CompartmentalModelClosed M :=
  And.intro E.sirEquationsClosed E.basicReproductiveNumberValid

end CellBiologyCanonicalLaneLean
end HautevilleHouse
