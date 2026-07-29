import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVariableMethodsAppliedProblemsCanonicalLaneLean

structure RiemannMappingPackage where
  sourceDomain : Type u
  sourceTopology : TopologicalSpace sourceDomain
  sourceComplex : ComplexStructure sourceDomain
  simplyConnected : Prop
  targetDomain : Type v
  targetTopology : TopologicalSpace targetDomain
  targetComplex : ComplexStructure targetDomain
  biholomorphicMap : sourceDomain → targetDomain
  conformalEquivalence : Prop

structure RiemannMappingEvidence (R : RiemannMappingPackage) where
  simplyConnectedClosed : R.simplyConnected
  conformalEquivalenceClosed : R.conformalEquivalence

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop :=
  R.simplyConnected ∧ R.conformalEquivalence

theorem riemann_mapping_closed_from_evidence (R : RiemannMappingPackage)
    (E : RiemannMappingEvidence R) : RiemannMappingClosed R := by
  exact And.intro E.simplyConnectedClosed E.conformalEquivalenceClosed

end ComplexVariableMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse