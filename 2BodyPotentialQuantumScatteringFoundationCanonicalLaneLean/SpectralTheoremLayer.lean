import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TwoBodyPotentialQuantumScatteringFoundationCanonicalLaneLean

structure SpectralCertificate where
  Hamiltonian : (ℝ → ℂ) → (ℝ → ℂ)
  domain : String
  spectrum : Set ℝ
  continuousSpectrum : Set ℝ
  pointSpectrum : Set ℝ

def freeHamiltonian : SpectralCertificate := {
  Hamiltonian := fun psi x => -deriv (fun x' => deriv psi x') x
  domain := "Sobolev H^2"
  spectrum := Set.Ioi 0
  continuousSpectrum := Set.Ioi 0
  pointSpectrum := {0}
}

def spectralDecompositionClosed (S : SpectralCertificate) : Prop :=
  S.spectrum = S.continuousSpectrum ∪ S.pointSpectrum

end TwoBodyPotentialQuantumScatteringFoundationCanonicalLaneLean
end HautevilleHouse