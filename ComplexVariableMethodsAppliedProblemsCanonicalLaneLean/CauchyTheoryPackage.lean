import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVariableMethodsAppliedProblemsCanonicalLaneLean

structure CauchyTheoryPackage where
  contourIntegralDefined : Prop
  cauchyIntegralFormula : Prop
  analyticImpliesPowerSeries : Prop
  residueTheorem : Prop
  maximumModulusPrinciple : Prop

structure CauchyTheoryEvidence (C : CauchyTheoryPackage) where
  contourIntegralDefinedClosed : C.contourIntegralDefined
  cauchyIntegralFormulaClosed : C.cauchyIntegralFormula
  analyticImpliesPowerSeriesClosed : C.analyticImpliesPowerSeries
  residueTheoremClosed : C.residueTheorem
  maximumModulusPrincipleClosed : C.maximumModulusPrinciple

def CauchyTheoryClosed (C : CauchyTheoryPackage) : Prop :=
  C.contourIntegralDefined ∧ C.cauchyIntegralFormula ∧
  C.analyticImpliesPowerSeries ∧ C.residueTheorem ∧
  C.maximumModulusPrinciple

theorem cauchy_theory_closed_from_evidence (C : CauchyTheoryPackage)
    (E : CauchyTheoryEvidence C) : CauchyTheoryClosed C := by
  exact And.intro E.contourIntegralDefinedClosed
    (And.intro E.cauchyIntegralFormulaClosed
      (And.intro E.analyticImpliesPowerSeriesClosed
        (And.intro E.residueTheoremClosed E.maximumModulusPrincipleClosed)))

end ComplexVariableMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse