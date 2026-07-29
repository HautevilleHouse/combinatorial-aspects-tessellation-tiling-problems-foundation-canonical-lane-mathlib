import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean

structure TileEdgePackage where
  tileFamily : Type u
  edgeRelation : tileFamily → tileFamily → Prop
  matchingEdges : Prop
  parityConstraint : ℕ
  edgeMatchingClosed : Prop

structure TileEdgeEvidence (P : TileEdgePackage) where
  matchingEdgesClosed : P.matchingEdges
  parityConstraintClosed : P.parityConstraint = 2
  edgeMatchingClosedTerm : P.edgeMatchingClosed

def TileEdgeClosed (P : TileEdgePackage) : Prop :=
  P.matchingEdges ∧ P.parityConstraint = 2 ∧ P.edgeMatchingClosed

theorem tile_edge_closed_from_evidence (P : TileEdgePackage)
    (E : TileEdgeEvidence P) : TileEdgeClosed P :=
  And.intro E.matchingEdgesClosed
    (And.intro E.parityConstraintClosed E.edgeMatchingClosedTerm)

end CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean
end HautevilleHouse