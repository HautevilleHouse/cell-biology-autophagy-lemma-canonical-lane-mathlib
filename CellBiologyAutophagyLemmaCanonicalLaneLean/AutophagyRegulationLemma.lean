import CellBiologyAutophagyLemmaCanonicalLaneLean.AutophagySignalingPathway

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure AutophagyRegulationLemmaPackage {A : AutophagyAdmittedObject}
    (P : AutophagySignalingPathwayPackage A) where
  inductionThreshold : Prop
  executionTimeline : Prop
  degradationEfficiency : Prop
  lemmaStatement : Prop

structure AutophagyRegulationLemmaEvidence {A : AutophagyAdmittedObject}
    {P : AutophagySignalingPathwayPackage A}
    (L : AutophagyRegulationLemmaPackage P) where
  inductionThresholdClosed : L.inductionThreshold
  executionTimelineClosed : L.executionTimeline
  degradationEfficiencyClosed : L.degradationEfficiency
  lemmaStatementClosed : L.lemmaStatement

def AutophagyRegulationLemmaClosed {A : AutophagyAdmittedObject}
    {P : AutophagySignalingPathwayPackage A}
    (L : AutophagyRegulationLemmaPackage P) : Prop :=
  L.inductionThreshold ∧ L.executionTimeline ∧
  L.degradationEfficiency ∧ L.lemmaStatement

theorem autophagy_regulation_lemma_closed_from_evidence
    {A : AutophagyAdmittedObject} {P : AutophagySignalingPathwayPackage A}
    (L : AutophagyRegulationLemmaPackage P)
    (E : AutophagyRegulationLemmaEvidence L) : AutophagyRegulationLemmaClosed L := by
  exact And.intro E.inductionThresholdClosed
    (And.intro E.executionTimelineClosed
      (And.intro E.degradationEfficiencyClosed E.lemmaStatementClosed))

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse