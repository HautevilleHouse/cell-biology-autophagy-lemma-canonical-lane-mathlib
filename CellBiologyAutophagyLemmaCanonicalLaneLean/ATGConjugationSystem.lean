import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure ATGConjugationPackage where
  atg12Conjugation : Prop
  atg8Ligation : Prop
  atg16lComplexFormation : Prop
  membraneExpansion : Prop

structure ATGConjugationEvidence (P : ATGConjugationPackage) where
  atg12ConjugationClosed : P.atg12Conjugation
  atg8LigationClosed : P.atg8Ligation
  atg16lComplexFormationClosed : P.atg16lComplexFormation
  membraneExpansionClosed : P.membraneExpansion

def ATGConjugationClosed (P : ATGConjugationPackage) : Prop :=
  P.atg12Conjugation ∧ P.atg8Ligation ∧ P.atg16lComplexFormation ∧ P.membraneExpansion

theorem atg_conjugation_closed_from_evidence (P : ATGConjugationPackage) (E : ATGConjugationEvidence P) : ATGConjugationClosed P := by
  exact And.intro E.atg12ConjugationClosed
    (And.intro E.atg8LigationClosed
      (And.intro E.atg16lComplexFormationClosed E.membraneExpansionClosed))

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse
