import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure AutophagyRegulationPackage where
  mtorSignaling : Prop
  atgProteinActivation : Prop
  phagophoreFormation : Prop
  membraneSource : Prop
  lysosomeFusion : Prop

structure AutophagyRegulationEvidence (P : AutophagyRegulationPackage) where
  mtorSignalingClosed : P.mtorSignaling
  atgProteinActivationClosed : P.atgProteinActivation
  phagophoreFormationClosed : P.phagophoreFormation
  membraneSourceClosed : P.membraneSource
  lysosomeFusionClosed : P.lysosomeFusion

def AutophagyRegulationClosed (P : AutophagyRegulationPackage) : Prop :=
  P.mtorSignaling ∧ P.atgProteinActivation ∧
  P.phagophoreFormation ∧ P.membraneSource ∧ P.lysosomeFusion

theorem autophagy_regulation_closed_from_evidence
    (P : AutophagyRegulationPackage) (E : AutophagyRegulationEvidence P) :
    AutophagyRegulationClosed P := by
  exact And.intro E.mtorSignalingClosed
    (And.intro E.atgProteinActivationClosed
      (And.intro E.phagophoreFormationClosed
        (And.intro E.membraneSourceClosed E.lysosomeFusionClosed)))

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse