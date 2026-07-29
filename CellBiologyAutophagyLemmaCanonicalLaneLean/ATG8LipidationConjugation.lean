import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure ATG8LipidationPackage where
  atg7Activation : Prop
  atg3Conjugation : Prop
  atg16l1Complex : Prop
  lc3Lipidation : Prop
  phagophoreElongation : Prop

structure ATG8LipidationEvidence (A : ATG8LipidationPackage) where
  atg7ActivationClosed : A.atg7Activation
  atg3ConjugationClosed : A.atg3Conjugation
  atg16l1ComplexClosed : A.atg16l1Complex
  lc3LipidationClosed : A.lc3Lipidation
  phagophoreElongationClosed : A.phagophoreElongation

def ATG8LipidationClosed (A : ATG8LipidationPackage) : Prop :=
  A.atg7Activation ∧ A.atg3Conjugation ∧
  A.atg16l1Complex ∧ A.lc3Lipidation ∧ A.phagophoreElongation

theorem atg8_lipidation_closed_from_evidence
    (A : ATG8LipidationPackage) (E : ATG8LipidationEvidence A) :
    ATG8LipidationClosed A := by
  exact And.intro E.atg7ActivationClosed
    (And.intro E.atg3ConjugationClosed
      (And.intro E.atg16l1ComplexClosed
        (And.intro E.lc3LipidationClosed E.phagophoreElongationClosed)))

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse