import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCanonicalLaneLean

structure GeneRegulatoryNetwork where
  nodes : List String
  edges : List (String × String × String)
  steadyState : Prop
  bifurcationDetected : Prop

structure SystemsBiologyPackage where
  network : GeneRegulatoryNetwork
  robustnessAnalysis : Prop
  sensitivityAnalysis : Prop
  controlKernelIdentified : Prop

structure SystemsBiologyEvidence (S : SystemsBiologyPackage) where
  robustnessAnalysisClosed : S.robustnessAnalysis
  sensitivityAnalysisClosed : S.sensitivityAnalysis
  controlKernelIdentifiedClosed : S.controlKernelIdentified

def SystemsBiologyClosed (S : SystemsBiologyPackage) : Prop :=
  S.robustnessAnalysis ∧ S.sensitivityAnalysis ∧ S.controlKernelIdentified

theorem systems_biology_closed_from_evidence
    (S : SystemsBiologyPackage) (E : SystemsBiologyEvidence S) :
    SystemsBiologyClosed S := by
  exact And.intro E.robustnessAnalysisClosed
    (And.intro E.sensitivityAnalysisClosed E.controlKernelIdentifiedClosed)

end CellBiologyCanonicalLaneLean
end HautevilleHouse