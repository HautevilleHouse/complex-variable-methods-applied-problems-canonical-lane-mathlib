import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVariableMethodsAppliedProblemsCanonicalLaneLean

structure CauchyTheoryPackage where
  cauchyIntegralFormula : Prop
  residueTheorem : Prop
  analyticContinuationPrinciple : Prop
  cauchyIntegralFormulaTerm : cauchyIntegralFormula
  residueTheoremTerm : residueTheorem
  analyticContinuationPrincipleTerm : analyticContinuationPrinciple

structure CauchyTheoryEvidence (C : CauchyTheoryPackage) where
  cauchyIntegralFormulaClosed : C.cauchyIntegralFormula
  residueTheoremClosed : C.residueTheorem
  analyticContinuationPrincipleClosed : C.analyticContinuationPrinciple

def CauchyTheoryClosed (C : CauchyTheoryPackage) : Prop :=
  C.cauchyIntegralFormula ∧ C.residueTheorem ∧ C.analyticContinuationPrinciple

theorem cauchy_theory_closed_from_evidence (C : CauchyTheoryPackage)
    (E : CauchyTheoryEvidence C) : CauchyTheoryClosed C := by
  exact And.intro E.cauchyIntegralFormulaClosed
    (And.intro E.residueTheoremClosed E.analyticContinuationPrincipleClosed)

end ComplexVariableMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse