import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyLemmaCanonicalLaneLean

structure AutophagyReceptorAdaptor where
  p62SQSTM1 : Prop
  nBR1 : Prop
  oPTN : Prop
  nDP52 : Prop
  tAX1BP1 : Prop
  cargoRecruitment : Prop

structure AutophagyReceptorAdaptorEvidence (A : AutophagyReceptorAdaptor) where
  p62SQSTM1Closed : A.p62SQSTM1
  nBR1Closed : A.nBR1
  oPTNClosed : A.oPTN
  nDP52Closed : A.nDP52
  tAX1BP1Closed : A.tAX1BP1
  cargoRecruitmentClosed : A.cargoRecruitment

def AutophagyReceptorAdaptorClosed (A : AutophagyReceptorAdaptor) : Prop :=
  A.p62SQSTM1 ∧ A.nBR1 ∧ A.oPTN ∧ A.nDP52 ∧ A.tAX1BP1 ∧ A.cargoRecruitment

theorem autophagy_receptor_adaptor_closed_from_evidence (A : AutophagyReceptorAdaptor) (E : AutophagyReceptorAdaptorEvidence A) :
    AutophagyReceptorAdaptorClosed A := by
  exact And.intro E.p62SQSTM1Closed
    (And.intro E.nBR1Closed
      (And.intro E.oPTNClosed
        (And.intro E.nDP52Closed
          (And.intro E.tAX1BP1Closed E.cargoRecruitmentClosed))))

end CellBiologyAutophagyLemmaCanonicalLaneLean
end HautevilleHouse