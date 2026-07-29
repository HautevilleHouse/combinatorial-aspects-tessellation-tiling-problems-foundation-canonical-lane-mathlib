import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean.TilingPackage

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean

structure PolyhedralComplexPackage {G : TessellationSpace} (T : TilingPackage G) where
  vertexSet : Type
  edgeSet : Type
  faceSet : Type
  incidenceStructure : Prop
  combinatorialEulerCharacteristic : Prop

structure PolyhedralComplexEvidence {G : TessellationSpace} {T : TilingPackage G} (P : PolyhedralComplexPackage T) where
  incidenceStructureClosed : P.incidenceStructure
  combinatorialEulerCharacteristicClosed : P.combinatorialEulerCharacteristic

def PolyhedralComplexClosed {G : TessellationSpace} {T : TilingPackage G} (P : PolyhedralComplexPackage T) : Prop :=
  P.incidenceStructure ∧ P.combinatorialEulerCharacteristic

theorem polyhedral_complex_closed_from_evidence {G : TessellationSpace} {T : TilingPackage G} (P : PolyhedralComplexPackage T) (E : PolyhedralComplexEvidence P) : PolyhedralComplexClosed P := by
  exact And.intro E.incidenceStructureClosed E.combinatorialEulerCharacteristicClosed

end CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean
end HautevilleHouse