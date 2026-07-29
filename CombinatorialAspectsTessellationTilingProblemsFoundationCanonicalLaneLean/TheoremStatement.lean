import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsFoundation

structure TilingAdmittedObject where
  tiling : Type u
  tilingTopology : TopologicalSpace tiling
  finiteTiling : Prop
  simplyConnectedTiling : Prop
  conclusion : finiteTiling ∧ simplyConnectedTiling

def TilingWitnessClosed (O : TilingAdmittedObject) : Prop :=
  O.finiteTiling ∧ O.simplyConnectedTiling

end CombinatorialAspectsTessellationTilingProblemsFoundation
end HautevilleHouse