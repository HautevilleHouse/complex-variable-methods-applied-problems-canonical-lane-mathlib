import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVariableMethodsAppliedProblemsCanonicalLaneLean

structure AnalyticContinuationPackage where
  identityTheorem : Prop
  analyticContinuationAlongPath : Prop
  monodromyTheorem : Prop
  removableSingularities : Prop
  laurentExpansion : Prop

structure AnalyticContinuationEvidence (A : AnalyticContinuationPackage) where
  identityTheoremClosed : A.identityTheorem
  analyticContinuationAlongPathClosed : A.analyticContinuationAlongPath
  monodromyTheoremClosed : A.monodromyTheorem
  removableSingularitiesClosed : A.removableSingularities
  laurentExpansionClosed : A.laurentExpansion

def AnalyticContinuationClosed (A : AnalyticContinuationPackage) : Prop :=
  A.identityTheorem ∧ A.analyticContinuationAlongPath ∧
  A.monodromyTheorem ∧ A.removableSingularities ∧ A.laurentExpansion

theorem analytic_continuation_closed_from_evidence (A : AnalyticContinuationPackage) (E : AnalyticContinuationEvidence A) :
    AnalyticContinuationClosed A := by
  exact And.intro E.identityTheoremClosed
    (And.intro E.analyticContinuationAlongPathClosed
      (And.intro E.monodromyTheoremClosed
        (And.intro E.removableSingularitiesClosed E.laurentExpansionClosed)))

end ComplexVariableMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse