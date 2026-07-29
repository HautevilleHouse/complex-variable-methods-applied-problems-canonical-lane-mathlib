import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVariableMethodsAppliedProblemsCanonicalLaneLean

structure AnalyticContinuationPackage where
  germ : Type u
  basePoint : ℂ
  initialFunction : ℂ → ℂ
  continuationDomain : Type v
  continuationTopology : TopologicalSpace continuationDomain
  continuationComplex : ComplexStructure continuationDomain
  extendedFunction : continuationDomain → ℂ
  uniquenessTheorem : Prop

structure AnalyticContinuationEvidence (A : AnalyticContinuationPackage) where
  uniquenessTheoremClosed : A.uniquenessTheorem

def AnalyticContinuationClosed (A : AnalyticContinuationPackage) : Prop :=
  A.uniquenessTheorem

theorem analytic_continuation_closed_from_evidence (A : AnalyticContinuationPackage)
    (E : AnalyticContinuationEvidence A) : AnalyticContinuationClosed A := by
  exact E.uniquenessTheoremClosed

end ComplexVariableMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse