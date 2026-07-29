import canonicalLaneMathlib.AdmissibleClass
import CellBiologyAutophagyLemmaCanonicalLaneLean.BridgeLemmas
import CellBiologyAutophagyLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

def ConstrainedAutophagyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_autophagy_endgame (A : AdmissibleClass) :
    ConstrainedAutophagyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse