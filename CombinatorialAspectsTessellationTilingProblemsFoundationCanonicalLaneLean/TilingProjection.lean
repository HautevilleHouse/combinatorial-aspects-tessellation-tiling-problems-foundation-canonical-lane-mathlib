import TilingTessellationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure TilingEndgameState where
  object : TilingAdmittedObject

tilingProjection : Projection TilingEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem tiling_projection_idempotent (x : TilingEndgameState) :
    tilingProjection.toFun (tilingProjection.toFun x) = tilingProjection.toFun x := by
  exact tilingProjection.idempotent x

end CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean
end HautevilleHouse