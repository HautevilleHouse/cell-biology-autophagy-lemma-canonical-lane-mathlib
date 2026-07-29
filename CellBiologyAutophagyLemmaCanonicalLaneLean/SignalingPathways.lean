import CellBiologyAutophagyLemmaCanonicalLaneLean.AutophagyCore

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure MTORSignalingPackage where
  nutrientSensing : Prop
  growthFactorInput : Prop
  energyStatus : Prop
  tsc1Tsc2Complex : Prop
  rhebGTPase : Prop
  mtorc1Activation : Prop
  ulk1Phosphorylation : Prop

structure AMPKSignalingPackage where
  amppAtpRatio : Prop
  lkb1Activation : Prop
  camkk2Activation : Prop
  ulk1Activation : Prop
  tsc2Activation : Prop

structure SignalingPathwaysEvidence where
  mtorSignalClosed : MTORSignalingPackage
  ampkSignalClosed : AMPKSignalingPackage
  mtorEvidence : mtorSignalClosed.nutrientSensing ∧ mtorSignalClosed.growthFactorInput ∧ mtorSignalClosed.energyStatus ∧ mtorSignalClosed.tsc1Tsc2Complex ∧ mtorSignalClosed.rhebGTPase ∧ mtorSignalClosed.mtorc1Activation ∧ mtorSignalClosed.ulk1Phosphorylation
  ampkEvidence : ampkSignalClosed.amppAtpRatio ∧ ampkSignalClosed.lkb1Activation ∧ ampkSignalClosed.camkk2Activation ∧ ampkSignalClosed.ulk1Activation ∧ ampkSignalClosed.tsc2Activation

def SignalingPathwaysClosed (S : SignalingPathwaysEvidence) : Prop :=
  S.mtorEvidence ∧ S.ampkEvidence

theorem signaling_pathways_closed_from_evidence (S : SignalingPathwaysEvidence) : SignalingPathwaysClosed S := by
  exact And.intro S.mtorEvidence S.ampkEvidence

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse