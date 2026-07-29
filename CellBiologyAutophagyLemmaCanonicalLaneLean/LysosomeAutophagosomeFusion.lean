import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure LysosomeAutophagosomeFusionPackage where
  rab7Recruitment : Prop
  snapinMediatedTethering : Prop
  stompComplexAssembly : Prop
  membraneFusionEvent : Prop
  autolysosomeMaturation : Prop

structure LysosomeAutophagosomeFusionEvidence (L : LysosomeAutophagosomeFusionPackage) where
  rab7RecruitmentClosed : L.rab7Recruitment
  snapinMediatedTetheringClosed : L.snapinMediatedTethering
  stompComplexAssemblyClosed : L.stompComplexAssembly
  membraneFusionEventClosed : L.membraneFusionEvent
  autolysosomeMaturationClosed : L.autolysosomeMaturation

def LysosomeAutophagosomeFusionClosed (L : LysosomeAutophagosomeFusionPackage) : Prop :=
  L.rab7Recruitment ∧ L.snapinMediatedTethering ∧
  L.stompComplexAssembly ∧ L.membraneFusionEvent ∧ L.autolysosomeMaturation

theorem lysosome_autophagosome_fusion_closed_from_evidence
    (L : LysosomeAutophagosomeFusionPackage) (E : LysosomeAutophagosomeFusionEvidence L) :
    LysosomeAutophagosomeFusionClosed L := by
  exact And.intro E.rab7RecruitmentClosed
    (And.intro E.snapinMediatedTetheringClosed
      (And.intro E.stompComplexAssemblyClosed
        (And.intro E.membraneFusionEventClosed E.autolysosomeMaturationClosed)))

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse