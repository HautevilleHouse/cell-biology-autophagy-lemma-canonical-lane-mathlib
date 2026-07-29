import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure LysosomeBiogenesisPackage where
  tfebNuclearTranslocation : Prop
  hydrolaseSynthesis : Prop
  lysosomalAcidification : Prop
  autophagicFluxCapacity : Prop

structure LysosomeBiogenesisEvidence (L : LysosomeBiogenesisPackage) where
  tfebNuclearTranslocationClosed : L.tfebNuclearTranslocation
  hydrolaseSynthesisClosed : L.hydrolaseSynthesis
  lysosomalAcidificationClosed : L.lysosomalAcidification
  autophagicFluxCapacityClosed : L.autophagicFluxCapacity

def LysosomeBiogenesisClosed (L : LysosomeBiogenesisPackage) : Prop :=
  L.tfebNuclearTranslocation ∧ L.hydrolaseSynthesis ∧
  L.lysosomalAcidification ∧ L.autophagicFluxCapacity

theorem lysosome_biogenesis_closed_from_evidence (L : LysosomeBiogenesisPackage)
    (E : LysosomeBiogenesisEvidence L) : LysosomeBiogenesisClosed L := by
  exact And.intro E.tfebNuclearTranslocationClosed
    (And.intro E.hydrolaseSynthesisClosed
      (And.intro E.lysosomalAcidificationClosed E.autophagicFluxCapacityClosed))

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse