import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyAutophagyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure LysosomeDockingPackage where
  autophagosomeTransportComplete : Prop
  lysosomePositioned : Prop
  tetheringComplexFormed : Prop
  snareMediatedFusion : Prop

structure LysosomeDockingEvidence (L : LysosomeDockingPackage) where
  autophagosomeTransportCompleteClosed : L.autophagosomeTransportComplete
  lysosomePositionedClosed : L.lysosomePositioned
  tetheringComplexFormedClosed : L.tetheringComplexFormed
  snareMediatedFusionClosed : L.snareMediatedFusion

def LysosomeDockingClosed (L : LysosomeDockingPackage) : Prop :=
  L.autophagosomeTransportComplete ∧ L.lysosomePositioned ∧ L.tetheringComplexFormed ∧ L.snareMediatedFusion

theorem lysosome_docking_closed_from_evidence (L : LysosomeDockingPackage) (E : LysosomeDockingEvidence L) :
    LysosomeDockingClosed L := by
  exact And.intro E.autophagosomeTransportCompleteClosed
    (And.intro E.lysosomePositionedClosed
      (And.intro E.tetheringComplexFormedClosed E.snareMediatedFusionClosed))

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse