import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean

structure TilingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure TilingAdmittedObject where
  space : TilingSpace
  periodicTiling : Prop
  finiteProtoset : Prop
  tileShape : Type
  shapeTopology : TopologicalSpace tileShape
  admitsTiling : Prop
  conclusion : admitsTiling

def TilingWitnessClosed (O : TilingAdmittedObject) : Prop :=
  O.admitsTiling

end CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean
end HautevilleHouse