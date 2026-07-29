import CellBiologyAutophagyLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure AutophagyRegulationPackage where
  mtorSignaling : Prop
  ampkActivation : Prop
  ulk1Complex : Prop
  beclin1Complex : Prop

structure AutophagosomeFormationPackage where
  phagophoreInitiation : Prop
  atg12Conjugation : Prop
  lc3Lipidation : Prop
  membraneElongation : Prop

structure AutophagyFluxPackage where
  lysosomalDocking : Prop
  autophagosomeLysosomeFusion : Prop
  cargoDegradation : Prop
  aminoAcidRecycling : Prop

structure AutophagyCoreEvidence where
  regulationClosed : AutophagyRegulationPackage
  formationClosed : AutophagosomeFormationPackage
  fluxClosed : AutophagyFluxPackage
  regulationEvidence : regulationClosed.mtorSignaling ∧ regulationClosed.ampkActivation ∧ regulationClosed.ulk1Complex ∧ regulationClosed.beclin1Complex
  formationEvidence : formationClosed.phagophoreInitiation ∧ formationClosed.atg12Conjugation ∧ formationClosed.lc3Lipidation ∧ formationClosed.membraneElongation
  fluxEvidence : fluxClosed.lysosomalDocking ∧ fluxClosed.autophagosomeLysosomeFusion ∧ fluxClosed.cargoDegradation ∧ fluxClosed.aminoAcidRecycling

def AutophagyCoreClosed (C : AutophagyCoreEvidence) : Prop :=
  (C.regulationClosed.mtorSignaling ∧ C.regulationClosed.ampkActivation ∧ C.regulationClosed.ulk1Complex ∧ C.regulationClosed.beclin1Complex) ∧
  (C.formationClosed.phagophoreInitiation ∧ C.formationClosed.atg12Conjugation ∧ C.formationClosed.lc3Lipidation ∧ C.formationClosed.membraneElongation) ∧
  (C.fluxClosed.lysosomalDocking ∧ C.fluxClosed.autophagosomeLysosomeFusion ∧ C.fluxClosed.cargoDegradation ∧ C.fluxClosed.aminoAcidRecycling)

theorem autophagy_core_closed_from_evidence (C : AutophagyCoreEvidence) : AutophagyCoreClosed C := by
  exact And.intro (And.intro C.regulationEvidence.1 (And.intro C.regulationEvidence.2.1 (And.intro C.regulationEvidence.2.2.1 C.regulationEvidence.2.2.2)))
    (And.intro (And.intro C.formationEvidence.1 (And.intro C.formationEvidence.2.1 (And.intro C.formationEvidence.2.2.1 C.formationEvidence.2.2.2)))
      (And.intro C.fluxEvidence.1 (And.intro C.fluxEvidence.2.1 (And.intro C.fluxEvidence.2.2.1 C.fluxEvidence.2.2.2))))

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse