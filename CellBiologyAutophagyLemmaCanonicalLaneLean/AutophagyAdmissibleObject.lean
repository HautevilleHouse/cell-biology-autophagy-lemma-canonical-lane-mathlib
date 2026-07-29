import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure AutophagyCellState where
  cellId : Nat
  autophagicFlux : Float
  lysosomalFunction : Float
  stressLevel : Float
  survivalProbability : Float

structure AutophagyAdmittedObject where
  state : AutophagyCellState
  highStress : state.stressLevel > 0.8
  lowFlux : state.autophagicFlux < 0.1
  survivalDecreased : state.survivalProbability < 0.5
  conclusion : survivalDecreased

def AutophagyWitnessClosed (O : AutophagyAdmittedObject) : Prop :=
  O.survivalDecreased

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse
