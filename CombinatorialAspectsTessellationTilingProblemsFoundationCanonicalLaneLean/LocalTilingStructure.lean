import CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean.TilingAdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean

structure LocalTilingPackage (A : AdmissibleClass) where
  finiteSubsetCovered : Prop
  patternRegularity : Prop
  compatibilityCondition : Prop
  extensionProperty : Prop

structure LocalTilingEvidence {A : AdmissibleClass} (L : LocalTilingPackage A) where
  finiteSubsetCoveredClosed : L.finiteSubsetCovered
  patternRegularityClosed : L.patternRegularity
  compatibilityConditionClosed : L.compatibilityCondition
  extensionPropertyClosed : L.extensionProperty

def LocalTilingClosed {A : AdmissibleClass} (L : LocalTilingPackage A) : Prop :=
  L.finiteSubsetCovered ∧ L.patternRegularity ∧ L.compatibilityCondition ∧ L.extensionProperty

theorem local_tiling_closed_from_evidence {A : AdmissibleClass}
    (L : LocalTilingPackage A) (E : LocalTilingEvidence L) : LocalTilingClosed L := by
  exact And.intro E.finiteSubsetCoveredClosed (And.intro E.patternRegularityClosed (And.intro E.compatibilityConditionClosed E.extensionPropertyClosed))

end CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean
end HautevilleHouse
