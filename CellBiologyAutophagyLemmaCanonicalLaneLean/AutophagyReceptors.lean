import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure AutophagyReceptorPackage where
  p62Binding : Prop
  nbr1CargoRecognition : Prop
  lirMotifInteraction : Prop
  cargoDelivery : Prop

structure AutophagyReceptorEvidence (P : AutophagyReceptorPackage) where
  p62BindingClosed : P.p62Binding
  nbr1CargoRecognitionClosed : P.nbr1CargoRecognition
  lirMotifInteractionClosed : P.lirMotifInteraction
  cargoDeliveryClosed : P.cargoDelivery

def AutophagyReceptorClosed (P : AutophagyReceptorPackage) : Prop :=
  P.p62Binding ∧ P.nbr1CargoRecognition ∧ P.lirMotifInteraction ∧ P.cargoDelivery

theorem autophagy_receptor_closed_from_evidence (P : AutophagyReceptorPackage) (E : AutophagyReceptorEvidence P) : AutophagyReceptorClosed P := by
  exact And.intro E.p62BindingClosed
    (And.intro E.nbr1CargoRecognitionClosed
      (And.intro E.lirMotifInteractionClosed E.cargoDeliveryClosed))

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse
