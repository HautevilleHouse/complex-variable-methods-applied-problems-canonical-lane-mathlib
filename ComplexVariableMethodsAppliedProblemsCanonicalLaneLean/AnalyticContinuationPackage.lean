import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVariableMethodsAppliedProblemsCanonicalLaneLean

structure AnalyticContinuationPackage where
  identityTheorem : Prop
  monodromyTheorem : Prop
  analyticContinuationAlongPath : Prop
  coveringSpaceLift : Prop

structure AnalyticContinuationEvidence (A : AnalyticContinuationPackage) where
  identityTheoremClosed : A.identityTheorem
  monodromyTheoremClosed : A.monodromyTheorem
  analyticContinuationAlongPathClosed : A.analyticContinuationAlongPath
  coveringSpaceLiftClosed : A.coveringSpaceLift

def AnalyticContinuationClosed (A : AnalyticContinuationPackage) : Prop :=
  A.identityTheorem ∧ A.monodromyTheorem ∧
  A.analyticContinuationAlongPath ∧ A.coveringSpaceLift

theorem analytic_continuation_closed_from_evidence (A : AnalyticContinuationPackage)
    (E : AnalyticContinuationEvidence A) : AnalyticContinuationClosed A := by
  exact And.intro E.identityTheoremClosed
    (And.intro E.monodromyTheoremClosed
      (And.intro E.analyticContinuationAlongPathClosed E.coveringSpaceLiftClosed))

end ComplexVariableMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse