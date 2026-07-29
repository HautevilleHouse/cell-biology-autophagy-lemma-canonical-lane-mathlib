import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure mTORSignalingPackage where
  aminoAcidSensing : Prop
  growthFactorInput : Prop
  energyStatusIntegration : Prop
  ulkComplexPhosphorylation : Prop

structure mTORSignalingEvidence (M : mTORSignalingPackage) where
  aminoAcidSensingClosed : M.aminoAcidSensing
  growthFactorInputClosed : M.growthFactorInput
  energyStatusIntegrationClosed : M.energyStatusIntegration
  ulkComplexPhosphorylationClosed : M.ulkComplexPhosphorylation

def mTORSignalingClosed (M : mTORSignalingPackage) : Prop :=
  M.aminoAcidSensing ∧ M.growthFactorInput ∧
  M.energyStatusIntegration ∧ M.ulkComplexPhosphorylation

theorem mtor_signaling_closed_from_evidence (M : mTORSignalingPackage)
    (E : mTORSignalingEvidence M) : mTORSignalingClosed M := by
  exact And.intro E.aminoAcidSensingClosed
    (And.intro E.growthFactorInputClosed
      (And.intro E.energyStatusIntegrationClosed E.ulkComplexPhosphorylationClosed))

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse