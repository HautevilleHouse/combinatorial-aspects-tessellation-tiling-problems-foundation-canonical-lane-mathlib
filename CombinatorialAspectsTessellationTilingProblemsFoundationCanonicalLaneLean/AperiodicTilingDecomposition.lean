import CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean.TileEdgeCombinatorics

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean

structure AperiodicDecompositionPackage
    {P : TileEdgePackage} (EP : TileEdgeEvidence P) where
  tileSubstitution : Type
  inflationFactor : ℕ
  expansionRule : tileSubstitution → (tileSubstitution → Prop)
  aperiodicityProofLeft : Prop
  aperiodicityProofRight : Prop

structure AperiodicDecompositionEvidence
    {P : TileEdgePackage} {EP : TileEdgeEvidence P}
    (D : AperiodicDecompositionPackage EP) where
  inflationFactorPos : D.inflationFactor > 1
  expansionConsistent : ∀ ts : D.tileSubstitution, D.expansionRule ts ts
  adProofsClosed : D.ap PeriodicityProofLeft ∧ D.ap eriodicityProofRight

def AperiodicDecompositionClosed
    {P : TileEdgePackage} {EP : TileEdgeEvidence P}
    (D : AperiodicDecompositionPackage EP) : Prop :=
  D.inflationFactor > 1 ∧ (∀ ts : D.tileSubstitution, D.expansionRule ts ts) ∧
  D.ap eriodicityProofLeft ∧ D.ap eriodicityProofRight

theorem aperiodic_decomposition_closed_from_evidence
    {P : TileEdgePackage} {EP : TileEdgeEvidence P}
    (D : AperiodicDecompositionPackage EP)
    (E : AperiodicDecompositionEvidence D) : AperiodicDecompositionClosed D :=
  And.intro E.inflationFactorPos
    (And.intro E.expansionConsistent (And.intro E.adProofsClosed.1 E.adProofsClosed.2))

end CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean
end HautevilleHouse