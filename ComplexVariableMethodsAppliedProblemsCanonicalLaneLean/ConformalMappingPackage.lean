import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVariableMethodsAppliedProblemsCanonicalLaneLean

structure ConformalMappingPackage where
  conformalMapDefined : Prop
  CauchyRiemannEquations : Prop
  harmonicFunctionPreservation : Prop
  biholomorphicMapping : Prop

structure ConformalMappingEvidence (C : ConformalMappingPackage) where
  conformalMapDefinedClosed : C.conformalMapDefined
  cauchyRiemannEquationsClosed : C.CauchyRiemannEquations
  harmonicFunctionPreservationClosed : C.harmonicFunctionPreservation
  biholomorphicMappingClosed : C.biholomorphicMapping

def ConformalMappingClosed (C : ConformalMappingPackage) : Prop :=
  C.conformalMapDefined ∧ C.CauchyRiemannEquations ∧
  C.harmonicFunctionPreservation ∧ C.biholomorphicMapping

theorem conformal_mapping_closed_from_evidence (C : ConformalMappingPackage)
    (E : ConformalMappingEvidence C) : ConformalMappingClosed C := by
  exact And.intro E.conformalMapDefinedClosed
    (And.intro E.cauchyRiemannEquationsClosed
      (And.intro E.harmonicFunctionPreservationClosed E.biholomorphicMappingClosed))

end ComplexVariableMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse