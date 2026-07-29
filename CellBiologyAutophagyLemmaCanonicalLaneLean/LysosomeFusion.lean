import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure LysosomeFusionPackage where
  autophagosomeLysosomeTethering : Prop
  snareComplexAssembly : Prop
  membraneFusion : Prop
  acidificationActivation : Prop

structure LysosomeFusionEvidence (P : LysosomeFusionPackage) where
  autophagosomeLysosomeTetheringClosed : P.autophagosomeLysosomeTethering
  snareComplexAssemblyClosed : P.snareComplexAssembly
  membraneFusionClosed : P.membraneFusion
  acidificationActivationClosed : P.acidificationActivation

def LysosomeFusionClosed (P : LysosomeFusionPackage) : Prop :=
  P.autophagosomeLysosomeTethering ∧ P.snareComplexAssembly ∧ P.membraneFusion ∧ P.acidificationActivation

theorem lysosome_fusion_closed_from_evidence (P : LysosomeFusionPackage) (E : LysosomeFusionEvidence P) : LysosomeFusionClosed P := by
  exact And.intro E.autophagosomeLysosomeTetheringClosed
    (And.intro E.snareComplexAssemblyClosed
      (And.intro E.membraneFusionClosed E.acidificationActivationClosed))

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse
