import HautevilleHouse.CellBiologyAutophagyLemmaCanonicalLaneLean.LysosomalDynamics

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure ApoptosisAutophagyCrosstalkPackage {P : AutophagySignalingPathwayPackage} {L : LysosomalDynamicsPackage P} where
  bcl2FamilyRegulation : Prop
  caspaseActivation : Prop
  autophagyApoptosisSwitch : Prop
  cellSurvivalOutcome : Prop

structure ApoptosisAutophagyCrosstalkEvidence {P : AutophagySignalingPathwayPackage} {L : LysosomalDynamicsPackage P} (C : ApoptosisAutophagyCrosstalkPackage P L) where
  bcl2FamilyRegulationClosed : C.bcl2FamilyRegulation
  caspaseActivationClosed : C.caspaseActivation
  autophagyApoptosisSwitchClosed : C.autophagyApoptosisSwitch
  cellSurvivalOutcomeClosed : C.cellSurvivalOutcome

def ApoptosisAutophagyCrosstalkClosed {P : AutophagySignalingPathwayPackage} {L : LysosomalDynamicsPackage P} (C : ApoptosisAutophagyCrosstalkPackage P L) : Prop :=
  C.bcl2FamilyRegulation ∧ C.caspaseActivation ∧ C.autophagyApoptosisSwitch ∧ C.cellSurvivalOutcome

theorem apoptosis_autophagy_crosstalk_closed_from_evidence
    {P : AutophagySignalingPathwayPackage} {L : LysosomalDynamicsPackage P}
    (C : ApoptosisAutophagyCrosstalkPackage P L) (E : ApoptosisAutophagyCrosstalkEvidence C) :
    ApoptosisAutophagyCrosstalkClosed C := by
  exact And.intro E.bcl2FamilyRegulationClosed
    (And.intro E.caspaseActivationClosed
      (And.intro E.autophagyApoptosisSwitchClosed E.cellSurvivalOutcomeClosed))

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse