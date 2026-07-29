import HautevilleHouse.CellBiologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCanonicalLaneLean

structure EpidemiologyPackage where
  susceptible : ℝ
  infected : ℝ
  recovered : ℝ
  transmissionRate : ℝ
  recoveryRate : ℝ
  sirEquations : Prop
  sirEquationsTerm : sirEquations

structure EpidemiologyEvidence (E : EpidemiologyPackage) where
  sirEquationsClosed : E.sirEquations
  transmissionRatePositive : E.transmissionRate > 0
  recoveryRatePositive : E.recoveryRate > 0

def EpidemiologyClosed (E : EpidemiologyPackage) : Prop :=
  E.sirEquations

theorem epidemiology_closed (E : EpidemiologyPackage)
    (Ev : EpidemiologyEvidence E) : EpidemiologyClosed E :=
  Ev.sirEquationsClosed

end CellBiologyCanonicalLaneLean
end HautevilleHouse