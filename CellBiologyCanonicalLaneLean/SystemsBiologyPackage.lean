import HautevilleHouse.CellBiologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCanonicalLaneLean

structure SystemsBiologyPackage where
  pathwayNetwork : Prop
  fluxBalance : Prop
  steadyStateCondition : Prop
  fluxBalanceTerm : fluxBalance
  steadyStateTerm : steadyStateCondition

structure SystemsBiologyEvidence (S : SystemsBiologyPackage) where
  pathwayNetworkClosed : S.pathwayNetwork
  fluxBalanceClosed : S.fluxBalance
  steadyStateClosed : S.steadyStateCondition

def SystemsBiologyClosed (S : SystemsBiologyPackage) : Prop :=
  S.pathwayNetwork ∧ S.fluxBalance ∧ S.steadyStateCondition

theorem systems_biology_closed (S : SystemsBiologyPackage)
    (E : SystemsBiologyEvidence S) : SystemsBiologyClosed S :=
  And.intro E.pathwayNetworkClosed (And.intro E.fluxBalanceClosed E.steadyStateClosed)

end CellBiologyCanonicalLaneLean
end HautevilleHouse