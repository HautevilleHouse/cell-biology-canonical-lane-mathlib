import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCanonicalLaneLean.EpidemiologyModel

namespace HautevilleHouse
namespace CellBiologyCanonicalLaneLean

structure SystemsBiologyCircuitPackage {O : CellBiologyAdmittedObject} {P : PopulationDynamicsPackage O} {E : EvolutionaryGameTheoryPackage P} {EG : EpidemiologyPackage E} (Ep : EG) where
  geneRegulatoryNetwork : Prop
  feedbackLoops : Prop
  bistability : Prop
  oscillationProperty : Prop

structure SystemsBiologyCircuitEvidence {O : CellBiologyAdmittedObject} {P : PopulationDynamicsPackage O} {E : EvolutionaryGameTheoryPackage P} {EG : EpidemiologyPackage E} {C : SystemsBiologyCircuitPackage EG} (Circ : C) where
  geneRegulatoryNetworkClosed : Circ.geneRegulatoryNetwork
  feedbackLoopsClosed : Circ.feedbackLoops
  bistabilityClosed : Circ.bistability
  oscillationPropertyClosed : Circ.oscillationProperty

def SystemsBiologyCircuitClosed {O : CellBiologyAdmittedObject} {P : PopulationDynamicsPackage O} {E : EvolutionaryGameTheoryPackage P} {EG : EpidemiologyPackage E} {C : SystemsBiologyCircuitPackage EG} (Circ : C) : Prop :=
  Circ.geneRegulatoryNetwork ∧ Circ.feedbackLoops ∧ Circ.bistability ∧ Circ.oscillationProperty

theorem systems_biology_circuit_closed_from_evidence {O : CellBiologyAdmittedObject} {P : PopulationDynamicsPackage O} {E : EvolutionaryGameTheoryPackage P} {EG : EpidemiologyPackage E} {C : SystemsBiologyCircuitPackage EG} (Circ : C) (Ev : SystemsBiologyCircuitEvidence Circ) : SystemsBiologyCircuitClosed Circ := by
  exact And.intro Ev.geneRegulatoryNetworkClosed (And.intro Ev.feedbackLoopsClosed (And.intro Ev.bistabilityClosed Ev.oscillationPropertyClosed))

end CellBiologyCanonicalLaneLean
end HautevilleHouse
