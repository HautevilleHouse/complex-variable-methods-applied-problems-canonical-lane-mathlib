import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVariableMethodsAppliedProblems

structure ConformalMappingPackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : Prop
  conformalMapSubset : Prop
  schwarzLemma : Prop
  automorphismGroup : (domain → ℂ) → Prop

def ConformalMappingClosed (C : ConformalMappingPackage) : Prop :=
  C.schwarzLemma ∧ C.automorphismGroup

structure ConformalMappingEvidence (C : ConformalMappingPackage) where
  schwarzClosed : C.schwarzLemma
  automorphismClosed : C.automorphismGroup

theorem conformal_mapping_closed_from_evidence (C : ConformalMappingPackage)
    (E : ConformalMappingEvidence C) : ConformalMappingClosed C := by
  exact And.intro E.schwarzClosed E.automorphismClosed

end ComplexVariableMethodsAppliedProblems
end HautevilleHouse