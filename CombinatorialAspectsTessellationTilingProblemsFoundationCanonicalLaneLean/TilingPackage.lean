import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean.TessellationDomain

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean

structure TilingPackage (G : TessellationSpace) where
  cellComplex : Type u
  adjacencyStructure : Prop
  tilingAdmissibility : Prop

structure TilingEvidence {G : TessellationSpace} (T : TilingPackage G) where
  adjacencyStructureClosed : T.adjacencyStructure
  tilingAdmissibilityClosed : T.tilingAdmissibility

def TilingClosed {G : TessellationSpace} (T : TilingPackage G) : Prop :=
  T.adjacencyStructure ∧ T.tilingAdmissibility

theorem tiling_closed_from_evidence {G : TessellationSpace} (T : TilingPackage G) (E : TilingEvidence T) : TilingClosed T := by
  exact And.intro E.adjacencyStructureClosed E.tilingAdmissibilityClosed

end CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean
end HautevilleHouse