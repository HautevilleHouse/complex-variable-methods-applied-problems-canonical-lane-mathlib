import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVariableMethodsAppliedProblemsCanonicalLaneLean

structure ResidueTheoremPackage where
  meromorphicFunction : ℂ → ℂ
  isolatedSingularities : Set ℂ
  contour : ℂ → ℂ
  windingNumber : ℂ → ℤ
  residueSum : ℂ → ℂ
  integralValue : ℂ
  theoremStatement : Prop

structure ResidueTheoremEvidence (R : ResidueTheoremPackage) where
  theoremStatementClosed : R.theoremStatement

def ResidueTheoremClosed (R : ResidueTheoremPackage) : Prop :=
  R.theoremStatement

theorem residue_theorem_closed_from_evidence (R : ResidueTheoremPackage)
    (E : ResidueTheoremEvidence R) : ResidueTheoremClosed R := by
  exact E.theoremStatementClosed

end ComplexVariableMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse