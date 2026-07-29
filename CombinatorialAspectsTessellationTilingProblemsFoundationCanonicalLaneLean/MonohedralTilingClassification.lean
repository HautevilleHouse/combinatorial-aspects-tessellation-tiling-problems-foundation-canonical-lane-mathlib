import CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean.TilingAdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean

structure MonohedralTilingPackage where
  prototile : Type
  euclideanPlaneTiling : Prop
  groupOfSymmetries : Type
  fundamentalDomain : Prop
  classificationByPrototile : Prop

structure MonohedralTilingEvidence (M : MonohedralTilingPackage) where
  euclideanPlaneTilingClosed : M.euclideanPlaneTiling
  fundamentalDomainClosed : M.fundamentalDomain
  classificationByPrototileClosed : M.classificationByPrototile

def MonohedralTilingClosed (M : MonohedralTilingPackage) : Prop :=
  M.euclideanPlaneTiling ∧ M.fundamentalDomain ∧ M.classificationByPrototile

theorem monohedral_tiling_closed_from_evidence (M : MonohedralTilingPackage) (E : MonohedralTilingEvidence M) :
    MonohedralTilingClosed M := by
  exact And.intro E.euclideanPlaneTilingClosed (And.intro E.fundamentalDomainClosed E.classificationByPrototileClosed)

end CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean
end HautevilleHouse
