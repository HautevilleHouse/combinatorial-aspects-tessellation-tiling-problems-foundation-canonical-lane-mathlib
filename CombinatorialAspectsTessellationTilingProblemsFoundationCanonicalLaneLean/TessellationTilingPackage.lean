import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean

-- | A tessellation of a surface into polygonal tiles
structure TessellationPackage where
  surface : Type u
  surfaceTopology : TopologicalSpace surface
  tiles : Type v
  tileShape : tiles → Type w
  tileIsPolygon : Prop
  edgeGluing : tiles → tiles → Prop
  edgeGluingSymmetric : edgeGluing = edgeGluing⁻¹
  noOverlap : Prop
  coverFullSurface : Prop
  vertexSet : Type u
  vertexValuation : vertexSet → ℕ

-- | The evidence that a tessellation is closed (admissible)
structure TessellationEvidence (T : TessellationPackage) where
  tileIsPolygonClosed : T.tileIsPolygon
  noOverlapClosed : T.noOverlap
  coverFullSurfaceClosed : T.coverFullSurface

def TessellationClosed (T : TessellationPackage) : Prop :=
  T.tileIsPolygon ∧ T.noOverlap ∧ T.coverFullSurface

theorem tessellation_closed_from_evidence (T : TessellationPackage) (E : TessellationEvidence T) : TessellationClosed T := by
  exact And.intro E.tileIsPolygonClosed (And.intro E.noOverlapClosed E.coverFullSurfaceClosed)

end CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean
end HautevilleHouse