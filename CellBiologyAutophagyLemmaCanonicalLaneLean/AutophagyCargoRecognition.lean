import canonicalLaneMathlib.AutophagyAdmittedObject

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure CargoReceptor where
  receptorType : String
  ubiquitinBinding : Prop
  lc3InteractingRegion : Prop

structure AutophagosomeClosure where
  membraneSealed : Prop
  cargoEncapsulated : Prop

def selective_autophagy (receptor : CargoReceptor) (closure : AutophagosomeClosure) : Prop :=
  receptor.ubiquitinBinding ∧ receptor.lc3InteractingRegion ∧
  closure.membraneSealed ∧ closure.cargoEncapsulated

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse