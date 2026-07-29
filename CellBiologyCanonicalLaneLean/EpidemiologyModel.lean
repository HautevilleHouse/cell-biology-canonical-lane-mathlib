import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCanonicalLaneLean.EvolutionaryGameTheory

namespace HautevilleHouse
namespace CellBiologyCanonicalLaneLean

structure EpidemiologyPackage {O : CellBiologyAdmittedObject} {P : PopulationDynamicsPackage O} {E : EvolutionaryGameTheoryPackage P} (EG : E) where
  sirModelDefined : Prop
  basicReproductiveNumber : Prop
  herdImmunityThreshold : Prop
  endemicEquilibrium : Prop

structure EpidemiologyEvidence {O : CellBiologyAdmittedObject} {P : PopulationDynamicsPackage O} {E : EvolutionaryGameTheoryPackage P} {EG : EpidemiologyPackage E} (Ep : EG) where
  sirModelDefinedClosed : Ep.sirModelDefined
  basicReproductiveNumberClosed : Ep.basicReproductiveNumber
  herdImmunityThresholdClosed : Ep.herdImmunityThreshold
  endemicEquilibriumClosed : Ep.endemicEquilibrium

def EpidemiologyClosed {O : CellBiologyAdmittedObject} {P : PopulationDynamicsPackage O} {E : EvolutionaryGameTheoryPackage P} {EG : EpidemiologyPackage E} (Ep : EG) : Prop :=
  Ep.sirModelDefined ∧ Ep.basicReproductiveNumber ∧ Ep.herdImmunityThreshold ∧ Ep.endemicEquilibrium

theorem epidemiology_closed_from_evidence {O : CellBiologyAdmittedObject} {P : PopulationDynamicsPackage O} {E : EvolutionaryGameTheoryPackage P} {EG : EpidemiologyPackage E} (Ep : EG) (Ev : EpidemiologyEvidence Ep) : EpidemiologyClosed Ep := by
  exact And.intro Ev.sirModelDefinedClosed (And.intro Ev.basicReproductiveNumberClosed (And.intro Ev.herdImmunityThresholdClosed Ev.endemicEquilibriumClosed))

end CellBiologyCanonicalLaneLean
end HautevilleHouse
