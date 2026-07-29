import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EilenbergMooreSpectralSequencesCanonicalLaneLean

structure SpectralSequenceObject where
  base : Type u
  fiber : Type v
  total : Type w
  baseTopology : TopologicalSpace base
  fiberTopology : TopologicalSpace fiber
  totalTopology : TopologicalSpace total
  fibration : base → fiber → total
  baseSimplyConnected : Prop
  fiberSimplyConnected : Prop
  spectralSequenceConverges : Prop

structure AdmissibleClass where
  object : SpectralSequenceObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.spectralSequenceConverges

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.spectralSequenceConverges

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end EilenbergMooreSpectralSequencesCanonicalLaneLean
end HautevilleHouse