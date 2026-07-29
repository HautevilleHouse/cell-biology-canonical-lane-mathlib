import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCanonicalLaneLean

structure EpidemiologyCompartmentModel where
  Susceptible : Type
  Infected : Type
  Recovered : Type
  transmissionRate : Prop
  recoveryRate : Prop
  populationSize : Prop
  compartmentEquations : Prop
  transmissionRateClosed : transmissionRate
  recoveryRateClosed : recoveryRate
  populationSizeClosed : populationSize
  compartmentEquationsClosed : compartmentEquations

structure CompartmentModelEvidence (E : EpidemiologyCompartmentModel) where
  transmissionRateClosed : E.transmissionRate
  recoveryRateClosed : E.recoveryRate
  populationSizeClosed : E.populationSize
  compartmentEquationsClosed : E.compartmentEquations

def CompartmentModelClosed (E : EpidemiologyCompartmentModel) : Prop :=
  E.transmissionRate ∧ E.recoveryRate ∧ E.populationSize ∧ E.compartmentEquations

theorem compartment_model_closed_from_evidence
    (E : EpidemiologyCompartmentModel) (Ev : CompartmentModelEvidence E) :
    CompartmentModelClosed E := by
  exact And.intro Ev.transmissionRateClosed (And.intro Ev.recoveryRateClosed (And.intro Ev.populationSizeClosed Ev.compartmentEquationsClosed))

end CellBiologyCanonicalLaneLean
end HautevilleHouse
