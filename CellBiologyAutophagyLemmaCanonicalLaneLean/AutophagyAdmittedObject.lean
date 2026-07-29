import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure AutophagySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AutophagyAdmittedObject where
  space : AutophagySpace
  autophagosomeFormation : Prop
  lysosomeFusion : Prop
  cargoDegradation : Prop
  nutrientRecycling : Prop
  conclusion : nutrientRecycling

def AutophagyWitnessClosed (O : AutophagyAdmittedObject) : Prop :=
  O.nutrientRecycling

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse