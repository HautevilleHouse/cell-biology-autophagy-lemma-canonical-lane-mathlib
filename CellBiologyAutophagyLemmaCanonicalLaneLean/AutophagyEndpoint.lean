import CellBiologyAutophagyLemmaCanonicalLaneLean.AutophagySignaling

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure EndpointPackage {P : AutophagyPackage} {S : SignalingPackage P} where
  cellSurvival : Prop
  stressRecovery : Prop
  autophagicCellDeath : Prop
  survivalConclusion : cellSurvival ∨ autophagicCellDeath

structure EndpointEvidence {P : AutophagyPackage} {S : SignalingPackage P}
    (Ep : EndpointPackage P S) where
  cellSurvivalClosed : Ep.cellSurvival
  stressRecoveryClosed : Ep.stressRecovery
  autophagicCellDeathClosed : Ep.autophagicCellDeath

def EndpointClosed {P : AutophagyPackage} {S : SignalingPackage P}
    (Ep : EndpointPackage P S) : Prop :=
  Ep.cellSurvival ∧ Ep.stressRecovery ∧ Ep.autophagicCellDeath

theorem endpoint_closed_from_evidence {P : AutophagyPackage} {S : SignalingPackage P}
    (Ep : EndpointPackage P S) (E : EndpointEvidence Ep) : EndpointClosed Ep := by
  exact And.intro E.cellSurvivalClosed
    (And.intro E.stressRecoveryClosed E.autophagicCellDeathClosed)

theorem endpoint_survival_conclusion {P : AutophagyPackage} {S : SignalingPackage P}
    (Ep : EndpointPackage P S) : Ep.cellSurvival ∨ Ep.autophagicCellDeath :=
  Ep.survivalConclusion

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse
