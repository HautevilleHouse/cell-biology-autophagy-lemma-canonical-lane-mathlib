import CellBiologyAutophagyLemmaCanonicalLaneLean.AutophagyStructures

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure SignalingPackage {P : AutophagyPackage} where
  mtorSignaling : Prop
  ampkSignaling : Prop
  ulkComplex : Prop
  transcriptionalRegulation : Prop

structure SignalingEvidence {P : AutophagyPackage} (S : SignalingPackage P) where
  mtorSignalingClosed : S.mtorSignaling
  ampkSignalingClosed : S.ampkSignaling
  ulkComplexClosed : S.ulkComplex
  transcriptionalRegulationClosed : S.transcriptionalRegulation

def SignalingClosed {P : AutophagyPackage} (S : SignalingPackage P) : Prop :=
  S.mtorSignaling ∧ S.ampkSignaling ∧ S.ulkComplex ∧ S.transcriptionalRegulation

theorem signaling_closed_from_evidence {P : AutophagyPackage} (S : SignalingPackage P)
    (E : SignalingEvidence S) : SignalingClosed S := by
  exact And.intro E.mtorSignalingClosed
    (And.intro E.ampkSignalingClosed
      (And.intro E.ulkComplexClosed E.transcriptionalRegulationClosed))

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse
