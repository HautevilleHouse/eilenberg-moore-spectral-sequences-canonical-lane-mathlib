import EilenbergMooreSpectralSequencesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EilenbergMooreSpectralSequencesCanonicalLaneLean

structure BarConstructionPackage where
  barComplexDefined : Prop
  acyclicity : Prop
  chainHomotopy : Prop
  naturality : Prop

structure BarConstructionEvidence (B : BarConstructionPackage) where
  barComplexDefinedClosed : B.barComplexDefined
  acyclicityClosed : B.acyclicity
  chainHomotopyClosed : B.chainHomotopy
  naturalityClosed : B.naturality

def BarConstructionClosed (B : BarConstructionPackage) : Prop :=
  B.barComplexDefined ∧ B.acyclicity ∧ B.chainHomotopy ∧ B.naturality

theorem bar_construction_closed_from_evidence (B : BarConstructionPackage)
    (E : BarConstructionEvidence B) : BarConstructionClosed B := by
  exact And.intro E.barComplexDefinedClosed
    (And.intro E.acyclicityClosed
      (And.intro E.chainHomotopyClosed E.naturalityClosed))

end EilenbergMooreSpectralSequencesCanonicalLaneLean
end HautevilleHouse