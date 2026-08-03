import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TwoBodyPotentialQuantumScatteringFoundationCanonicalLaneLean

-- Two-body potential structure for quantum scattering
structure TwoBodyPotential where
  V : ℝ → ℝ  -- potential as function of radial coordinate
  regularity : String  -- e.g., "smooth", "C^2"
  shortRange : Bool

def defaultCoulombPotential : TwoBodyPotential := {
  V := fun r => -1 / r
  regularity := "smooth"
  shortRange := false
}

def YukawaPotential (mu : ℝ) : TwoBodyPotential := {
  V := fun r => -Real.exp(-mu * r) / r
  regularity := "smooth"
  shortRange := true
}

end TwoBodyPotentialQuantumScatteringFoundationCanonicalLaneLean
end HautevilleHouse