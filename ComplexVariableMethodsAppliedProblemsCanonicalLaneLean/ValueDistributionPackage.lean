import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVariableMethodsAppliedProblemsCanonicalLaneLean

structure ValueDistributionPackage where
  picardTheorem : Prop
  littlePicardTheorem : Prop
  greatPicardTheorem : Prop
  normalityFamily : Prop
  juliaSetProperty : Prop

structure ValueDistributionEvidence (V : ValueDistributionPackage) where
  picardTheoremClosed : V.picardTheorem
  littlePicardTheoremClosed : V.littlePicardTheorem
  greatPicardTheoremClosed : V.greatPicardTheorem
  normalityFamilyClosed : V.normalityFamily
  juliaSetPropertyClosed : V.juliaSetProperty

def ValueDistributionClosed (V : ValueDistributionPackage) : Prop :=
  V.picardTheorem ∧ V.littlePicardTheorem ∧
  V.greatPicardTheorem ∧ V.normalityFamily ∧ V.juliaSetProperty

theorem value_distribution_closed_from_evidence (V : ValueDistributionPackage)
    (E : ValueDistributionEvidence V) : ValueDistributionClosed V := by
  exact And.intro E.picardTheoremClosed
    (And.intro E.littlePicardTheoremClosed
      (And.intro E.greatPicardTheoremClosed
        (And.intro E.normalityFamilyClosed E.juliaSetPropertyClosed)))

end ComplexVariableMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse