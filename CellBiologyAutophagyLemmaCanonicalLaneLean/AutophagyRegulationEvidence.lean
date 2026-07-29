import HautevilleHouse.CellBiologyAutophagyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure AutophagyRegulationEvidence where
  mtorSignaling : Prop
  ampkActivation : Prop
  beclin1Interaction : Prop
  lc3Lipidation : Prop
  receptorRecognition : Prop
  mtorSignalingTerm : mtorSignaling
  ampkActivationTerm : ampkActivation
  beclin1InteractionTerm : beclin1Interaction
  lc3LipidationTerm : lc3Lipidation
  receptorRecognitionTerm : receptorRecognition

def AutophagyRegulationEvidenceClosed (E : AutophagyRegulationEvidence) : Prop :=
  E.mtorSignaling ∧ E.ampkActivation ∧ E.beclin1Interaction ∧ E.lc3Lipidation ∧ E.receptorRecognition

theorem autophagy_regulation_evidence_closed (E : AutophagyRegulationEvidence) :
    AutophagyRegulationEvidenceClosed E := by
  exact And.intro E.mtorSignalingTerm
    (And.intro E.ampkActivationTerm
      (And.intro E.beclin1InteractionTerm
        (And.intro E.lc3LipidationTerm E.receptorRecognitionTerm)))

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse