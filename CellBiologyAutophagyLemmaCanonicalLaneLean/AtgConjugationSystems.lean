import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure AtgConjugationSystemsPackage where
  atg12Conjugation : Prop
  atg8Lipidation : Prop
  ubiquitinLikeCascade : Prop
  membraneAssociation : Prop

structure AtgConjugationSystemsEvidence (A : AtgConjugationSystemsPackage) where
  atg12ConjugationClosed : A.atg12Conjugation
  atg8LipidationClosed : A.atg8Lipidation
  ubiquitinLikeCascadeClosed : A.ubiquitinLikeCascade
  membraneAssociationClosed : A.membraneAssociation

def AtgConjugationSystemsClosed (A : AtgConjugationSystemsPackage) : Prop :=
  A.atg12Conjugation ∧ A.atg8Lipidation ∧
  A.ubiquitinLikeCascade ∧ A.membraneAssociation

theorem atg_conjugation_systems_closed_from_evidence (A : AtgConjugationSystemsPackage)
    (E : AtgConjugationSystemsEvidence A) : AtgConjugationSystemsClosed A := by
  exact And.intro E.atg12ConjugationClosed
    (And.intro E.atg8LipidationClosed
      (And.intro E.ubiquitinLikeCascadeClosed E.membraneAssociationClosed))

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse