import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure AutophagyInitiationPackage where
  nutrientSensingPathway : Prop
  ulkComplexActivation : Prop
  phagophoreNucleation : Prop
  pi3pProduction : Prop

structure AutophagyInitiationEvidence (I : AutophagyInitiationPackage) where
  nutrientSensingPathwayClosed : I.nutrientSensingPathway
  ulkComplexActivationClosed : I.ulkComplexActivation
  phagophoreNucleationClosed : I.phagophoreNucleation
  pi3pProductionClosed : I.pi3pProduction

def AutophagyInitiationClosed (I : AutophagyInitiationPackage) : Prop :=
  I.nutrientSensingPathway ∧ I.ulkComplexActivation ∧
  I.phagophoreNucleation ∧ I.pi3pProduction

theorem autophagy_initiation_closed_from_evidence (I : AutophagyInitiationPackage)
    (E : AutophagyInitiationEvidence I) : AutophagyInitiationClosed I := by
  exact And.intro E.nutrientSensingPathwayClosed
    (And.intro E.ulkComplexActivationClosed
      (And.intro E.phagophoreNucleationClosed E.pi3pProductionClosed))

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse