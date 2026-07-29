import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure ULK1ComplexPackage where
  atg13Phosphorylation : Prop
  atg101Binding : Prop
  focalAdhesionKinaseInhibition : Prop
  ampkActivation : Prop

structure ULK1ComplexEvidence (U : ULK1ComplexPackage) where
  atg13PhosphorylationClosed : U.atg13Phosphorylation
  atg101BindingClosed : U.atg101Binding
  focalAdhesionKinaseInhibitionClosed : U.focalAdhesionKinaseInhibition
  ampkActivationClosed : U.ampkActivation

def ULK1ComplexClosed (U : ULK1ComplexPackage) : Prop :=
  U.atg13Phosphorylation ∧ U.atg101Binding ∧
  U.focalAdhesionKinaseInhibition ∧ U.ampkActivation

theorem ulk1_complex_closed_from_evidence
    (U : ULK1ComplexPackage) (E : ULK1ComplexEvidence U) :
    ULK1ComplexClosed U := by
  exact And.intro E.atg13PhosphorylationClosed
    (And.intro E.atg101BindingClosed
      (And.intro E.focalAdhesionKinaseInhibitionClosed E.ampkActivationClosed))

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse