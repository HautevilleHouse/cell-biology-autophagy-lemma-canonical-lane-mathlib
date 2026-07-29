import canonicalLaneMathlib.AutophagyAdmittedObject

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure MembraneSource where
  erDerived : Prop
  golgiDerived : Prop
  plasmaMembraneDerived : Prop

structure LC3Conjugation where
  lc3Cleaved : Prop
  lc3PhosphatidylethanolamineConjugated : Prop
  autophagosomeMembraneExpanded : Prop

def membrane_expansion (src : MembraneSource) (lc3 : LC3Conjugation) : Prop :=
  (src.erDerived ∨ src.golgiDerived ∨ src.plasmaMembraneDerived) ∧
  lc3.lc3Cleaved ∧ lc3.lc3PhosphatidylethanolamineConjugated ∧
  lc3.autophagosomeMembraneExpanded

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse