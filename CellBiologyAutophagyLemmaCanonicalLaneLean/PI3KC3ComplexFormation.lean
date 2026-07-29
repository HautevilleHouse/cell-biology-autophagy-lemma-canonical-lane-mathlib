import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure PI3KC3ComplexPackage where
  beclin1Binding : Prop
  atg14LRecruitment : Prop
  vps34KinaseActivity : Prop
  pi3pProduction : Prop
  membraneCurvatureInduction : Prop

structure PI3KC3ComplexEvidence (P : PI3KC3ComplexPackage) where
  beclin1BindingClosed : P.beclin1Binding
  atg14LRecruitmentClosed : P.atg14LRecruitment
  vps34KinaseActivityClosed : P.vps34KinaseActivity
  pi3pProductionClosed : P.pi3pProduction
  membraneCurvatureInductionClosed : P.membraneCurvatureInduction

def PI3KC3ComplexClosed (P : PI3KC3ComplexPackage) : Prop :=
  P.beclin1Binding ∧ P.atg14LRecruitment ∧
  P.vps34KinaseActivity ∧ P.pi3pProduction ∧ P.membraneCurvatureInduction

theorem pi3kc3_complex_closed_from_evidence
    (P : PI3KC3ComplexPackage) (E : PI3KC3ComplexEvidence P) :
    PI3KC3ComplexClosed P := by
  exact And.intro E.beclin1BindingClosed
    (And.intro E.atg14LRecruitmentClosed
      (And.intro E.vps34KinaseActivityClosed
        (And.intro E.pi3pProductionClosed E.membraneCurvatureInductionClosed)))

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse