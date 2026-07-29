import CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean.AperiodicityClassification

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean

structure TilingEnumerativeGenerationPackage {A : AdmissibleClass}
    {L : LocalTilingPackage A} {C : AperiodicityClassificationPackage L} where
  generationAlgorithm : Prop
  completenessProof : Prop
  growthRateAsymptotics : Prop
  complexityBound : Prop

structure TilingEnumerativeGenerationEvidence {A : AdmissibleClass}
    {L : LocalTilingPackage A} {C : AperiodicityClassificationPackage L}
    (G : TilingEnumerativeGenerationPackage C) where
  generationAlgorithmClosed : G.generationAlgorithm
  completenessProofClosed : G.completenessProof
  growthRateAsymptoticsClosed : G.growthRateAsymptotics
  complexityBoundClosed : G.complexityBound

def TilingEnumerativeGenerationClosed {A : AdmissibleClass}
    {L : LocalTilingPackage A} {C : AperiodicityClassificationPackage L}
    (G : TilingEnumerativeGenerationPackage C) : Prop :=
  G.generationAlgorithm ∧ G.completenessProof ∧ G.growthRateAsymptotics ∧ G.complexityBound

theorem tiling_enumerative_generation_closed_from_evidence {A : AdmissibleClass}
    {L : LocalTilingPackage A} {C : AperiodicityClassificationPackage L}
    (G : TilingEnumerativeGenerationPackage C)
    (E : TilingEnumerativeGenerationEvidence G) : TilingEnumerativeGenerationClosed G := by
  exact And.intro E.generationAlgorithmClosed (And.intro E.completenessProofClosed (And.intro E.growthRateAsymptoticsClosed E.complexityBoundClosed))

end CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean
end HautevilleHouse
