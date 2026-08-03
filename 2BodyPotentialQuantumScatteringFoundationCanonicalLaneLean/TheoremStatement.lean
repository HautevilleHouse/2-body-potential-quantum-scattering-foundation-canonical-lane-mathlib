import HautevilleHouse.2BodyPotentialQuantumScatteringFoundationCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace TwoBodyPotentialQuantumScatteringFoundationCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  spectralCertificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository
  , theoremName := sourceRepository
  , theoremObject := sourceDescription
  , classicalBoundary := "Quantum scattering classical boundary: spectral theorem, uncertainty principle, commutation relations"
  , spectralCertificateLane := "spectrally_constrained"
  , carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
  }

end TwoBodyPotentialQuantumScatteringFoundationCanonicalLaneLean
end HautevilleHouse