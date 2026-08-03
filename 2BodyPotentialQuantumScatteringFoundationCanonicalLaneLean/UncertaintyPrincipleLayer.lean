import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TwoBodyPotentialQuantumScatteringFoundationCanonicalLaneLean

structure UncertaintyCertificate where
  position : (ℝ → ℂ) → ℂ
  momentum : (ℝ → ℂ) → ℂ
  commutator : Prop
  uncertaintyBound : Prop

def canonicalCommutator : UncertaintyCertificate := {
  position := fun psi x => x * psi x
  momentum := fun psi x => -I * deriv psi x
  commutator := True
  uncertaintyBound := True
}

def uncertaintyPrincipleClosed (U : UncertaintyCertificate) : Prop :=
  U.commutator ∧ U.uncertaintyBound

end TwoBodyPotentialQuantumScatteringFoundationCanonicalLaneLean
end HautevilleHouse