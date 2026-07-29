import TilingTessellationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean

structure ConvexityPackage (A : AdmissibleClass) where
  tileShape : Type u
  convexityCondition : Prop
  noOverlap : Prop
  fullCoverage : Prop
  convexPolyhedronCondition : Prop

structure ConvexityEvidence {A : AdmissibleClass} (C : ConvexityPackage A) where
  convexityConditionClosed : C.convexityCondition
  noOverlapClosed : C.noOverlap
  fullCoverageClosed : C.fullCoverage
  convexPolyhedronConditionClosed : C.convexPolyhedronCondition

def ConvexityClosed {A : AdmissibleClass} (C : ConvexityPackage A) : Prop :=
  C.convexityCondition ∧ C.noOverlap ∧ C.fullCoverage ∧ C.convexPolyhedronCondition

theorem convexity_closed_from_evidence {A : AdmissibleClass} (C : ConvexityPackage A) (E : ConvexityEvidence C) : ConvexityClosed C := by
  exact And.intro E.convexityConditionClosed (And.intro E.noOverlapClosed (And.intro E.fullCoverageClosed E.convexPolyhedronConditionClosed))

end CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean
end HautevilleHouse