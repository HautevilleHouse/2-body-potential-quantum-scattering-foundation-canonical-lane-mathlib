import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TwoBodyPotentialQuantumScatteringFoundationCanonicalLaneLean

structure ScatteringState where
  energy : ℝ
  wavefunction : ℝ → ℂ
  incomingAmplitude : ℂ
  outgoingAmplitude : ℂ

def freeState (k : ℝ) : ScatteringState := {
  energy := k^2
  wavefunction := fun x => Real.cos (k * x)
  incomingAmplitude := 1
  outgoingAmplitude := 1
}

end TwoBodyPotentialQuantumScatteringFoundationCanonicalLaneLean
end HautevilleHouse