import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVariableMethodsAppliedProblemsCanonicalLaneLean

structure RiemannMappingPackage where
  simplyConnectedDomain : Prop
  conformalEquivalenceExists : Prop
  mappingUniquenessUpToAutomorphism : Prop
  boundaryCorrespondence : Prop
  existenceOfPrimitive : Prop

structure RiemannMappingEvidence (R : RiemannMappingPackage) where
  simplyConnectedDomainClosed : R.simplyConnectedDomain
  conformalEquivalenceExistsClosed : R.conformalEquivalenceExists
  mappingUniquenessUpToAutomorphismClosed : R.mappingUniquenessUpToAutomorphism
  boundaryCorrespondenceClosed : R.boundaryCorrespondence
  existenceOfPrimitiveClosed : R.existenceOfPrimitive

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop :=
  R.simplyConnectedDomain ∧ R.conformalEquivalenceExists ∧
  R.mappingUniquenessUpToAutomorphism ∧ R.boundaryCorrespondence ∧
  R.existenceOfPrimitive

theorem riemann_mapping_closed_from_evidence (R : RiemannMappingPackage) (E : RiemannMappingEvidence R) :
    RiemannMappingClosed R := by
  exact And.intro E.simplyConnectedDomainClosed
    (And.intro E.conformalEquivalenceExistsClosed
      (And.intro E.mappingUniquenessUpToAutomorphismClosed
        (And.intro E.boundaryCorrespondenceClosed E.existenceOfPrimitiveClosed)))

end ComplexVariableMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse