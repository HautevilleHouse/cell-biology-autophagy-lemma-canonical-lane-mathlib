import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure ULK1Complex where
  uLK1Kinase : Prop
  aTG13Binding : Prop
  fIP200Scaffold : Prop
  aTG101Interaction : Prop
  membraneRecruitment : Prop
  autophagyInitiation : Prop

structure ULK1ComplexEvidence (U : ULK1Complex) where
  uLK1KinaseClosed : U.uLK1Kinase
  aTG13BindingClosed : U.aTG13Binding
  fIP200ScaffoldClosed : U.fIP200Scaffold
  aTG101InteractionClosed : U.aTG101Interaction
  membraneRecruitmentClosed : U.membraneRecruitment
  autophagyInitiationClosed : U.autophagyInitiation

def ULK1ComplexClosed (U : ULK1Complex) : Prop :=
  U.uLK1Kinase ∧ U.aTG13Binding ∧ U.fIP200Scaffold ∧ U.aTG101Interaction ∧ U.membraneRecruitment ∧ U.autophagyInitiation

theorem ulk1_complex_closed_from_evidence (U : ULK1Complex) (E : ULK1ComplexEvidence U) :
    ULK1ComplexClosed U := by
  exact And.intro E.uLK1KinaseClosed
    (And.intro E.aTG13BindingClosed
      (And.intro E.fIP200ScaffoldClosed
        (And.intro E.aTG101InteractionClosed
          (And.intro E.membraneRecruitmentClosed E.autophagyInitiationClosed))))

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse