import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure AutophagyCellState where
  cellType : Type
  stressLevel : Prop
  nutrientAvailability : Prop

structure AutophagyAdmittedObject where
  state : AutophagyCellState
  autophagyInduction : Prop
  autophagosomeFormation : Prop
  lysosomeFusion : Prop
  degradationCompleted : Prop
  conclusion : degradationCompleted

def AutophagyWitnessClosed (O : AutophagyAdmittedObject) : Prop :=
  O.degradationCompleted

structure AdmissibleClass where
  object : AutophagyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AutophagyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse