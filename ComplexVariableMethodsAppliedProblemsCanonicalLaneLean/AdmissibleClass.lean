import ComplexVariableMethodsAppliedProblemsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ComplexVariableMethodsAppliedProblemsCanonicalLaneLean

structure AdmissibleClass where
  object : ComplexAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ComplexWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ComplexVariableMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse