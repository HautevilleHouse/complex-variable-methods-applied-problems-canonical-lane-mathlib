import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVariableMethodsAppliedProblems

structure PicardTheoremsPackage where
  entireFunction : (ℂ → ℂ) → Prop
  littlePicardTheorem : Prop
  greatPicardTheorem : Prop

def PicardTheoremsClosed (P : PicardTheoremsPackage) : Prop :=
  P.littlePicardTheorem ∧ P.greatPicardTheorem

structure PicardTheoremsEvidence (P : PicardTheoremsPackage) where
  littlePicardClosed : P.littlePicardTheorem
  greatPicardClosed : P.greatPicardTheorem

theorem picard_theorems_closed_from_evidence (P : PicardTheoremsPackage) (E : PicardTheoremsEvidence P) :
    PicardTheoremsClosed P := by
  exact And.intro E.littlePicardClosed E.greatPicardClosed

end ComplexVariableMethodsAppliedProblems
end HautevilleHouse