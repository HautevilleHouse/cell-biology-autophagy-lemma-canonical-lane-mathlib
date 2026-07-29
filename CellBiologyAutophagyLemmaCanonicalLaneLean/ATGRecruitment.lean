import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyAutophagyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure ATGRecruitmentPackage where
  ulkComplexActivated : Prop
  atg9VesiclesRecruited : Prop
  pi3pGenerated : Prop
  atg16l1ComplexLocalized : Prop

structure ATGRecruitmentEvidence (P : ATGRecruitmentPackage) where
  ulkComplexActivatedClosed : P.ulkComplexActivated
  atg9VesiclesRecruitedClosed : P.atg9VesiclesRecruited
  pi3pGeneratedClosed : P.pi3pGenerated
  atg16l1ComplexLocalizedClosed : P.atg16l1ComplexLocalized

def ATGRecruitmentClosed (P : ATGRecruitmentPackage) : Prop :=
  P.ulkComplexActivated ∧ P.atg9VesiclesRecruited ∧ P.pi3pGenerated ∧ P.atg16l1ComplexLocalized

theorem atg_recruitment_closed_from_evidence (P : ATGRecruitmentPackage) (E : ATGRecruitmentEvidence P) :
    ATGRecruitmentClosed P := by
  exact And.intro E.ulkComplexActivatedClosed
    (And.intro E.atg9VesiclesRecruitedClosed
      (And.intro E.pi3pGeneratedClosed E.atg16l1ComplexLocalizedClosed))

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.degradationObserved

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse