import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyAutophagyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure AutophagyDegradationPackage where
  autolysosomeAcidified : Prop
  hydrolasesActive : Prop
  cargoDegraded : Prop
  metabolitesRecycled : Prop

structure AutophagyDegradationEvidence (D : AutophagyDegradationPackage) where
  autolysosomeAcidifiedClosed : D.autolysosomeAcidified
  hydrolasesActiveClosed : D.hydrolasesActive
  cargoDegradedClosed : D.cargoDegraded
  metabolitesRecycledClosed : D.metabolitesRecycled

def AutophagyDegradationClosed (D : AutophagyDegradationPackage) : Prop :=
  D.autolysosomeAcidified ∧ D.hydrolasesActive ∧ D.cargoDegraded ∧ D.metabolitesRecycled

theorem autophagy_degradation_closed_from_evidence (D : AutophagyDegradationPackage) (E : AutophagyDegradationEvidence D) :
    AutophagyDegradationClosed D := by
  exact And.intro E.autolysosomeAcidifiedClosed
    (And.intro E.hydrolasesActiveClosed
      (And.intro E.cargoDegradedClosed E.metabolitesRecycledClosed))

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse