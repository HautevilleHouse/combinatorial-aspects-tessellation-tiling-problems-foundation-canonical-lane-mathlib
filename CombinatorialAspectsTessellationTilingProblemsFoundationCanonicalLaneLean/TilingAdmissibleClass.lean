import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean

structure TilingAdmittedObject where
  tileSet : Type u
  tileEdges : tileSet → Type v
  tilingExists : Prop
  conclusion : tilingExists

structure AdmissibleClass where
  object : TilingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.tilingExists ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean
end HautevilleHouse