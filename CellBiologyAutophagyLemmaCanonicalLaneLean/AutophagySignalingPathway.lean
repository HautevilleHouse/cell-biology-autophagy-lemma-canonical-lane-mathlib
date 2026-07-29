import CellBiologyAutophagyLemmaCanonicalLaneLean.AutophagyObjects

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure AutophagySignalingPathwayPackage (A : AutophagyAdmittedObject) where
  mtorPathwayActive : Prop
  ampkPathwayActive : Prop
  atgProteinComplexAssembled : Prop
  ulkComplexActivated : Prop
  signalIntegration : Prop

structure AutophagySignalingPathwayEvidence {A : AutophagyAdmittedObject}
    (P : AutophagySignalingPathwayPackage A) where
  mtorPathwayActiveClosed : P.mtorPathwayActive
  ampkPathwayActiveClosed : P.ampkPathwayActive
  atgProteinComplexAssembledClosed : P.atgProteinComplexAssembled
  ulkComplexActivatedClosed : P.ulkComplexActivated
  signalIntegrationClosed : P.signalIntegration

def AutophagySignalingPathwayClosed {A : AutophagyAdmittedObject}
    (P : AutophagySignalingPathwayPackage A) : Prop :=
  P.mtorPathwayActive ∧ P.ampkPathwayActive ∧
  P.atgProteinComplexAssembled ∧ P.ulkComplexActivated ∧
  P.signalIntegration

theorem autophagy_signaling_pathway_closed_from_evidence
    {A : AutophagyAdmittedObject} (P : AutophagySignalingPathwayPackage A)
    (E : AutophagySignalingPathwayEvidence P) : AutophagySignalingPathwayClosed P := by
  exact And.intro E.mtorPathwayActiveClosed
    (And.intro E.ampkPathwayActiveClosed
      (And.intro E.atgProteinComplexAssembledClosed
        (And.intro E.ulkComplexActivatedClosed E.signalIntegrationClosed)))

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse