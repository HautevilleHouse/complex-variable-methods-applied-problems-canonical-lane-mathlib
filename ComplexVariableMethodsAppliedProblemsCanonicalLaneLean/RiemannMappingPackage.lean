import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVariableMethodsAppliedProblemsCanonicalLaneLean

structure RiemannMappingPackage where
  simplyConnectedDomain : Prop
  conformalMappingExists : Prop
  uniquenessUpToAutomorphism : Prop
  boundaryBehavior : Prop

structure RiemannMappingEvidence (R : RiemannMappingPackage) where
  simplyConnectedDomainClosed : R.simplyConnectedDomain
  conformalMappingExistsClosed : R.conformalMappingExists
  uniquenessUpToAutomorphismClosed : R.uniquenessUpToAutomorphism
  boundaryBehaviorClosed : R.boundaryBehavior

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop :=
  R.simplyConnectedDomain ∧ R.conformalMappingExists ∧
  R.uniquenessUpToAutomorphism ∧ R.boundaryBehavior

theorem riemann_mapping_closed_from_evidence (R : RiemannMappingPackage)
    (E : RiemannMappingEvidence R) : RiemannMappingClosed R := by
  exact And.intro E.simplyConnectedDomainClosed
    (And.intro E.conformalMappingExistsClosed
      (And.intro E.uniquenessUpToAutomorphismClosed E.boundaryBehaviorClosed))

end ComplexVariableMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse