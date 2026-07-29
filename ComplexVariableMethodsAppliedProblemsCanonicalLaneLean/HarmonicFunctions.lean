import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVariableMethodsAppliedProblemsCanonicalLaneLean

structure HarmonicFunctionsPackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : ComplexStructure domain
  harmonicFunction : domain → ℝ
  laplaceEquation : Prop
  meanValueProperty : Prop
  maximumPrinciple : Prop

structure HarmonicFunctionsEvidence (H : HarmonicFunctionsPackage) where
  laplaceEquationClosed : H.laplaceEquation
  meanValuePropertyClosed : H.meanValueProperty
  maximumPrincipleClosed : H.maximumPrinciple

def HarmonicFunctionsClosed (H : HarmonicFunctionsPackage) : Prop :=
  H.laplaceEquation ∧ H.meanValueProperty ∧ H.maximumPrinciple

theorem harmonic_functions_closed_from_evidence (H : HarmonicFunctionsPackage)
    (E : HarmonicFunctionsEvidence H) : HarmonicFunctionsClosed H := by
  exact And.intro E.laplaceEquationClosed (And.intro E.meanValuePropertyClosed E.maximumPrincipleClosed)

end ComplexVariableMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse