import canonicalLaneMathlib.AdmissibleClass
import CellBiologyAutophagyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure AutophagosomeFormationPackage where
  phagophoreNucleation : Prop
  membraneElongation : Prop
  autophagosomeCompletion : Prop
  cargoloading : Prop

structure AutophagosomeFormationEvidence (P : AutophagosomeFormationPackage) where
  phagophoreNucleationClosed : P.phagophoreNucleation
  membraneElongationClosed : P.membraneElongation
  autophagosomeCompletionClosed : P.autophagosomeCompletion
  cargoloadingClosed : P.cargoloading

def AutophagosomeFormationClosed (P : AutophagosomeFormationPackage) : Prop :=
  P.phagophoreNucleation ∧ P.membraneElongation ∧ P.autophagosomeCompletion ∧ P.cargoloading

theorem autophagosome_formation_closed_from_evidence
    (P : AutophagosomeFormationPackage) (E : AutophagosomeFormationEvidence P) :
    AutophagosomeFormationClosed P := by
  exact And.intro E.phagophoreNucleationClosed
    (And.intro E.membraneElongationClosed
      (And.intro E.autophagosomeCompletionClosed E.cargoloadingClosed))

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse