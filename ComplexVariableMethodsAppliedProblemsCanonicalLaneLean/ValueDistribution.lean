import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVariableMethodsAppliedProblemsCanonicalLaneLean

structure ValueDistributionPackage where
  entireFunction : ℂ → ℂ
  picardTheorem : Prop
  littlePicard : Prop
  greatPicard : Prop
  nevanlinnaTheory : Prop

structure ValueDistributionEvidence (V : ValueDistributionPackage) where
  littlePicardClosed : V.littlePicard
  greatPicardClosed : V.greatPicard
  nevanlinnaTheoryClosed : V.nevanlinnaTheory

def ValueDistributionClosed (V : ValueDistributionPackage) : Prop :=
  V.littlePicard ∧ V.greatPicard ∧ V.nevanlinnaTheory

theorem value_distribution_closed_from_evidence (V : ValueDistributionPackage)
    (E : ValueDistributionEvidence V) : ValueDistributionClosed V := by
  exact And.intro E.littlePicardClosed (And.intro E.greatPicardClosed E.nevanlinnaTheoryClosed)

end ComplexVariableMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse