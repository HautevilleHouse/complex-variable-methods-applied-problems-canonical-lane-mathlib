import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVariableMethodsAppliedProblemsCanonicalLaneLean

structure ComplexPlanePackage where
  point : Type u
  topology : TopologicalSpace point
  analyticStructure : Prop
  holomorphicFunctionsDefined : Prop
  analyticStructureTerm : analyticStructure
  holomorphicFunctionsDefinedTerm : holomorphicFunctionsDefined

structure ComplexPlaneEvidence (C : ComplexPlanePackage) where
  analyticStructureClosed : C.analyticStructure
  holomorphicFunctionsDefinedClosed : C.holomorphicFunctionsDefined

def ComplexPlaneClosed (C : ComplexPlanePackage) : Prop :=
  C.analyticStructure ∧ C.holomorphicFunctionsDefined

theorem complex_plane_closed_from_evidence (C : ComplexPlanePackage)
    (E : ComplexPlaneEvidence C) : ComplexPlaneClosed C := by
  exact And.intro E.analyticStructureClosed E.holomorphicFunctionsDefinedClosed

end ComplexVariableMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse