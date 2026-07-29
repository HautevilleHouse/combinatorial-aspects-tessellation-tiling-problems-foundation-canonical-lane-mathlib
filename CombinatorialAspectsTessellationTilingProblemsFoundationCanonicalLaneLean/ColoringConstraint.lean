import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean.TilingPackage

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean

structure ColoringConstraintPackage {G : TessellationSpace} (T : TilingPackage G) where
  colorAssignment : Type
  properColoring : Prop
  chromaticNumber : ℕ
  coloringAdmissible : Prop

structure ColoringConstraintEvidence {G : TessellationSpace} {T : TilingPackage G} (C : ColoringConstraintPackage T) where
  properColoringClosed : C.properColoring
  coloringAdmissibleClosed : C.coloringAdmissible

def ColoringConstraintClosed {G : TessellationSpace} {T : TilingPackage G} (C : ColoringConstraintPackage T) : Prop :=
  C.properColoring ∧ C.coloringAdmissible

theorem coloring_constraint_closed_from_evidence {G : TessellationSpace} {T : TilingPackage G} (C : ColoringConstraintPackage T) (E : ColoringConstraintEvidence C) : ColoringConstraintClosed C := by
  exact And.intro E.properColoringClosed E.coloringAdmissibleClosed

end CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean
end HautevilleHouse