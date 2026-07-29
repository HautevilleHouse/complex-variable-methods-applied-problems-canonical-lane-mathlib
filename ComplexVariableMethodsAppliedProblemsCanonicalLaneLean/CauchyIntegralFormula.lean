import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVariableMethodsAppliedProblemsCanonicalLaneLean

structure CauchyIntegralPackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : ComplexStructure domain
  contour : domain → domain
  holomorphicFunction : domain → ℂ
  integralRepresentation : Prop
  derivativeRepresentation : Prop

structure CauchyIntegralEvidence (C : CauchyIntegralPackage) where
  integralRepresentationClosed : C.integralRepresentation
  derivativeRepresentationClosed : C.derivativeRepresentation

def CauchyIntegralClosed (C : CauchyIntegralPackage) : Prop :=
  C.integralRepresentation ∧ C.derivativeRepresentation

theorem cauchy_integral_closed_from_evidence (C : CauchyIntegralPackage)
    (E : CauchyIntegralEvidence C) : CauchyIntegralClosed C := by
  exact And.intro E.integralRepresentationClosed E.derivativeRepresentationClosed

end ComplexVariableMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse