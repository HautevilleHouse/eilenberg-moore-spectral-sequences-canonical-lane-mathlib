import EilenbergMooreSpectralSequencesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EilenbergMooreSpectralSequencesCanonicalLaneLean

def ConstrainedSpectralSequenceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_spectral_sequence_endgame (A : AdmissibleClass) :
    ConstrainedSpectralSequenceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EilenbergMooreSpectralSequencesCanonicalLaneLean
end HautevilleHouse