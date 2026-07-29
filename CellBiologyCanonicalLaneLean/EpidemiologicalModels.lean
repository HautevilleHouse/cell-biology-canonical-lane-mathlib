import HautevilleHouse.CellBiologyCanonicalLaneLean.CellBiologyObjects

namespace HautevilleHouse
namespace CellBiologyCanonicalLaneLean

structure EpidemiologicalPackage (C : CellSystem) where
  compartmentModel : Prop
  transmissionRate : Prop
  basicReproductionNumber : Prop
  epidemicThreshold : Prop

structure EpidemiologicalEvidence {C : CellSystem} (E : EpidemiologicalPackage C) where
  compartmentModelClosed : E.compartmentModel
  transmissionRateClosed : E.transmissionRate
  basicReproductionNumberClosed : E.basicReproductionNumber
  epidemicThresholdClosed : E.epidemicThreshold

def EpidemiologicalClosed {C : CellSystem} (E : EpidemiologicalPackage C) : Prop :=
  E.compartmentModel ∧ E.transmissionRate ∧ E.basicReproductionNumber ∧ E.epidemicThreshold

theorem epidemiological_closed_from_evidence {C : CellSystem}
    (E : EpidemiologicalPackage C) (Ev : EpidemiologicalEvidence E) :
    EpidemiologicalClosed E := by
  exact And.intro Ev.compartmentModelClosed
    (And.intro Ev.transmissionRateClosed
      (And.intro Ev.basicReproductionNumberClosed Ev.epidemicThresholdClosed))

end CellBiologyCanonicalLaneLean
end HautevilleHouse