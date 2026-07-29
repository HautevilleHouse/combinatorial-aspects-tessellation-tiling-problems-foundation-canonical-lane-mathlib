import CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean.HeeschProblemPackage

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean

structure PeriodicTilingDecompositionPackage (M : MonohedralTilingPackage) where
  lattice : Type
  fundamentalDomain : M.prototile
  periodicity : Prop
  decompositionByCohomology : Prop

structure PeriodicTilingDecompositionEvidence (M : MonohedralTilingPackage) (P : PeriodicTilingDecompositionPackage M) where
  periodicityClosed : P.periodicity
  decompositionByCohomologyClosed : P.decompositionByCohomology

def PeriodicTilingDecompositionClosed (M : MonohedralTilingPackage) (P : PeriodicTilingDecompositionPackage M) : Prop :=
  P.periodicity ∧ P.decompositionByCohomology

theorem periodic_tiling_decomposition_closed_from_evidence (M : MonohedralTilingPackage) (P : PeriodicTilingDecompositionPackage M) (E : PeriodicTilingDecompositionEvidence M P) :
    PeriodicTilingDecompositionClosed M P := by
  exact And.intro E.periodicityClosed E.decompositionByCohomologyClosed

end CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean
end HautevilleHouse
