import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean

structure TessellationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

definition TessellationAdmittedObject where
  space : TessellationSpace
  tilingProperty : Prop
  combinatorialCondition : Prop
  conclusion : tilingProperty ∧ combinatorialCondition

end CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean
end HautevilleHouse