import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCanonicalLaneLean

structure CellSignalingPackage where
  receptorActivation : Prop
  kinaseCascade : Prop
  secondMessenger : Prop
  transcriptionFactor : Prop
  geneRegulation : Prop
  pathwayCrossTalk : Prop
  signalAmplification : Prop

structure CellSignalingEvidence (S : CellSignalingPackage) where
  receptorActivationClosed : S.receptorActivation
  kinaseCascadeClosed : S.kinaseCascade
  secondMessengerClosed : S.secondMessenger
  transcriptionFactorClosed : S.transcriptionFactor
  geneRegulationClosed : S.geneRegulation

def CellSignalingClosed (S : CellSignalingPackage) : Prop :=
  S.receptorActivation ∧ S.kinaseCascade ∧ S.secondMessenger ∧
  S.transcriptionFactor ∧ S.geneRegulation

theorem cell_signaling_closed_from_evidence (S : CellSignalingPackage)
    (E : CellSignalingEvidence S) : CellSignalingClosed S := by
  exact And.intro E.receptorActivationClosed
    (And.intro E.kinaseCascadeClosed
      (And.intro E.secondMessengerClosed
        (And.intro E.transcriptionFactorClosed E.geneRegulationClosed)))

end CellBiologyCanonicalLaneLean
end HautevilleHouse