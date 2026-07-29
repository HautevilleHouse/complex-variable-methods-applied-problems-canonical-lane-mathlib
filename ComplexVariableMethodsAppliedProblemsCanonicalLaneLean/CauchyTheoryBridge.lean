import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVariableMethodsAppliedProblemsCanonicalLaneLean

structure CauchyTheoryPackage where
  contourIntegralsDefined : Prop
  cauchyIntegralFormula : Prop
  analyticityFromDifferentiability : Prop
  cauchyEstimates : Prop
  liouvilleTheorem : Prop
  maximumModulusPrinciple : Prop

structure CauchyTheoryEvidence (C : CauchyTheoryPackage) where
  contourIntegralsDefinedClosed : C.contourIntegralsDefined
  cauchyIntegralFormulaClosed : C.cauchyIntegralFormula
  analyticityFromDifferentiabilityClosed : C.analyticityFromDifferentiability
  cauchyEstimatesClosed : C.cauchyEstimates
  liouvilleTheoremClosed : C.liouvilleTheorem
  maximumModulusPrincipleClosed : C.maximumModulusPrinciple

def CauchyTheoryClosed (C : CauchyTheoryPackage) : Prop :=
  C.contourIntegralsDefined ∧ C.cauchyIntegralFormula ∧ C.analyticityFromDifferentiability ∧
  C.cauchyEstimates ∧ C.liouvilleTheorem ∧ C.maximumModulusPrinciple

theorem cauchy_theory_closed_from_evidence (C : CauchyTheoryPackage) (E : CauchyTheoryEvidence C) :
    CauchyTheoryClosed C := by
  exact And.intro E.contourIntegralsDefinedClosed
    (And.intro E.cauchyIntegralFormulaClosed
      (And.intro E.analyticityFromDifferentiabilityClosed
        (And.intro E.cauchyEstimatesClosed
          (And.intro E.liouvilleTheoremClosed E.maximumModulusPrincipleClosed))))

end ComplexVariableMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse