import CellBiologyAutophagyLemmaCanonicalLaneLean.AutophagyAdmissibleObject

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure AutophagyPackage where
  cellPopulationModel : Prop
  fluxDynamics : Prop
  lysosomalCapacity : Prop
  stressResponse : Prop

structure AutophagyEvidence (P : AutophagyPackage) where
  cellPopulationModelClosed : P.cellPopulationModel
  fluxDynamicsClosed : P.fluxDynamics
  lysosomalCapacityClosed : P.lysosomalCapacity
  stressResponseClosed : P.stressResponse

def AutophagyClosed (P : AutophagyPackage) : Prop :=
  P.cellPopulationModel ∧ P.fluxDynamics ∧ P.lysosomalCapacity ∧ P.stressResponse

theorem autophagy_closed_from_evidence (P : AutophagyPackage) (E : AutophagyEvidence P) :
    AutophagyClosed P := by
  exact And.intro E.cellPopulationModelClosed
    (And.intro E.fluxDynamicsClosed
      (And.intro E.lysosomalCapacityClosed E.stressResponseClosed))

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse
