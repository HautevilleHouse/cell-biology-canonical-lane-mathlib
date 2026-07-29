import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCanonicalLaneLean

structure SystemsBiologyNetwork where
  Gene : Type
  Protein : Type
  Metabolite : Type
  geneRegulation : Gene → Protein → Prop
  proteinInteraction : Protein → Protein → Prop
  metabolicPathway : List Metabolite
  signalingCascade : Prop
  feedbackLoop : Prop
  geneRegulationClosed : geneRegulation
  proteinInteractionClosed : proteinInteraction
  signalingCascadeClosed : signalingCascade
  feedbackLoopClosed : feedbackLoop

structure NetworkEvidence (N : SystemsBiologyNetwork) where
  geneRegulationClosed : N.geneRegulation
  proteinInteractionClosed : N.proteinInteraction
  signalingCascadeClosed : N.signalingCascade
  feedbackLoopClosed : N.feedbackLoop

def NetworkClosed (N : SystemsBiologyNetwork) : Prop :=
  N.geneRegulation ∧ N.proteinInteraction ∧ N.signalingCascade ∧ N.feedbackLoop

theorem network_closed_from_evidence
    (N : SystemsBiologyNetwork) (E : NetworkEvidence N) :
    NetworkClosed N := by
  exact And.intro E.geneRegulationClosed (And.intro E.proteinInteractionClosed (And.intro E.signalingCascadeClosed E.feedbackLoopClosed))

end CellBiologyCanonicalLaneLean
end HautevilleHouse
