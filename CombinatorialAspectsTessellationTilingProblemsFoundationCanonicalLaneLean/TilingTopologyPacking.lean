import CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean.AperiodicTilingDecomposition

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean

structure TilingTopologyPackage
    {D : AperiodicDecompositionPackage EP} where
  openConditions : Set (Type u)
  coveringCondition : Prop
  packingCondition : Prop
  boundaryBehavior : Prop
  topologicalInvariant : ℤ
  coveringClosed : Prop
  packingClosed : Prop

structure TilingTopologyEvidence
    (T : TilingTopologyPackage) where
  coveringClosed : T.coveringClosed
  packingClosed : T.packingClosed
  invariantClosed : T.topologicalInvariant = 0

def TilingTopologyClosed (T : TilingTopologyPackage) : Prop :=
  T.coveringClosed ∧ T.packingClosed ∧ T.topologicalInvariant = 0

theorem tiling_topology_closed_from_evidence (T : TilingTopologyPackage)
    (E : TilingTopologyEvidence T) : TilingTopologyClosed T :=
  And.intro E.coveringClosed (And.intro E.packingClosed E.invariantClosed)

end CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean
end HautevilleHouse