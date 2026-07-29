import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean.TessellationDomain

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean

structure PeriodicTilingPackage (G : TessellationSpace) where
  translationGroup : Type
  fundamentalDomain : Prop
  periodicCondition : Prop
  tilingCompleteness : Prop

structure PeriodicTilingEvidence {G : TessellationSpace} (P : PeriodicTilingPackage G) where
  fundamentalDomainClosed : P.fundamentalDomain
  periodicConditionClosed : P.periodicCondition
  tilingCompletenessClosed : P.tilingCompleteness

def PeriodicTilingClosed {G : TessellationSpace} (P : PeriodicTilingPackage G) : Prop :=
  P.fundamentalDomain ∧ P.periodicCondition ∧ P.tilingCompleteness

theorem periodic_tiling_closed_from_evidence {G : TessellationSpace} (P : PeriodicTilingPackage G) (E : PeriodicTilingEvidence P) : PeriodicTilingClosed P := by
  exact And.intro E.fundamentalDomainClosed (And.intro E.periodicConditionClosed E.tilingCompletenessClosed)

end CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean
end HautevilleHouse