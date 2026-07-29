import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyAutophagyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure AutophagosomeMembranePackage where
  phagophoreNucleated : Prop
  membraneExpanded : Prop
  cargoEncapsulated : Prop
  closedDoubleMembrane : Prop

structure AutophagosomeMembraneEvidence (M : AutophagosomeMembranePackage) where
  phagophoreNucleatedClosed : M.phagophoreNucleated
  membraneExpandedClosed : M.membraneExpanded
  cargoEncapsulatedClosed : M.cargoEncapsulated
  closedDoubleMembraneClosed : M.closedDoubleMembrane

def AutophagosomeMembraneClosed (M : AutophagosomeMembranePackage) : Prop :=
  M.phagophoreNucleated ∧ M.membraneExpanded ∧ M.cargoEncapsulated ∧ M.closedDoubleMembrane

theorem autophagosome_membrane_closed_from_evidence (M : AutophagosomeMembranePackage) (E : AutophagosomeMembraneEvidence M) :
    AutophagosomeMembraneClosed M := by
  exact And.intro E.phagophoreNucleatedClosed
    (And.intro E.membraneExpandedClosed
      (And.intro E.cargoEncapsulatedClosed E.closedDoubleMembraneClosed))

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse