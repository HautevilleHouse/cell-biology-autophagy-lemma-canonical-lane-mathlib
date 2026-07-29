import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure AutophagyLysosomeReformationPackage where
  mtorReactivation : Prop
  autophagicLysosomeReformation : Prop
  clathrinMediatedBudding : Prop
  lysosomeRegeneration : Prop
  nutrientRecycling : Prop

structure AutophagyLysosomeReformationEvidence (A : AutophagyLysosomeReformationPackage) where
  mtorReactivationClosed : A.mtorReactivation
  autophagicLysosomeReformationClosed : A.autophagicLysosomeReformation
  clathrinMediatedBuddingClosed : A.clathrinMediatedBudding
  lysosomeRegenerationClosed : A.lysosomeRegeneration
  nutrientRecyclingClosed : A.nutrientRecycling

def AutophagyLysosomeReformationClosed (A : AutophagyLysosomeReformationPackage) : Prop :=
  A.mtorReactivation ∧ A.autophagicLysosomeReformation ∧
  A.clathrinMediatedBudding ∧ A.lysosomeRegeneration ∧ A.nutrientRecycling

theorem autophagy_lysosome_reformation_closed_from_evidence
    (A : AutophagyLysosomeReformationPackage) (E : AutophagyLysosomeReformationEvidence A) :
    AutophagyLysosomeReformationClosed A := by
  exact And.intro E.mtorReactivationClosed
    (And.intro E.autophagicLysosomeReformationClosed
      (And.intro E.clathrinMediatedBuddingClosed
        (And.intro E.lysosomeRegenerationClosed E.nutrientRecyclingClosed)))

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse