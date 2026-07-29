import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure AutophagyReceptorCargoPackage where
  selectiveCargoRecognition : Prop
  receptorLigandInteraction : Prop
  cargoSequestrationEfficiency : Prop
  ubiquitinationSignal : Prop

structure AutophagyReceptorCargoEvidence (R : AutophagyReceptorCargoPackage) where
  selectiveCargoRecognitionClosed : R.selectiveCargoRecognition
  receptorLigandInteractionClosed : R.receptorLigandInteraction
  cargoSequestrationEfficiencyClosed : R.cargoSequestrationEfficiency
  ubiquitinationSignalClosed : R.ubiquitinationSignal

def AutophagyReceptorCargoClosed (R : AutophagyReceptorCargoPackage) : Prop :=
  R.selectiveCargoRecognition ∧ R.receptorLigandInteraction ∧
  R.cargoSequestrationEfficiency ∧ R.ubiquitinationSignal

theorem autophagy_receptor_cargo_closed_from_evidence (R : AutophagyReceptorCargoPackage)
    (E : AutophagyReceptorCargoEvidence R) : AutophagyReceptorCargoClosed R := by
  exact And.intro E.selectiveCargoRecognitionClosed
    (And.intro E.receptorLigandInteractionClosed
      (And.intro E.cargoSequestrationEfficiencyClosed E.ubiquitinationSignalClosed))

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse