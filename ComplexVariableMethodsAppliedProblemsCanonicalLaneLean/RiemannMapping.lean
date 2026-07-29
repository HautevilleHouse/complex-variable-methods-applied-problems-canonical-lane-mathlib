import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVariableMethodsAppliedProblemsCanonicalLaneLean

structure RiemannMappingPackage where
  simplyConnectedDomain : Prop
  conformalEquivalenceExists : Prop
  boundaryCorrespondence : Prop
  simplyConnectedDomainTerm : simplyConnectedDomain
  conformalEquivalenceExistsTerm : conformalEquivalenceExists
  boundaryCorrespondenceTerm : boundaryCorrespondence

structure RiemannMappingEvidence (R : RiemannMappingPackage) where
  simplyConnectedDomainClosed : R.simplyConnectedDomain
  conformalEquivalenceExistsClosed : R.conformalEquivalenceExists
  boundaryCorrespondenceClosed : R.boundaryCorrespondence

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop :=
  R.simplyConnectedDomain ∧ R.conformalEquivalenceExists ∧ R.boundaryCorrespondence

theorem riemann_mapping_closed_from_evidence (R : RiemannMappingPackage)
    (E : RiemannMappingEvidence R) : RiemannMappingClosed R := by
  exact And.intro E.simplyConnectedDomainClosed
    (And.intro E.conformalEquivalenceExistsClosed E.boundaryCorrespondenceClosed)

end ComplexVariableMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse