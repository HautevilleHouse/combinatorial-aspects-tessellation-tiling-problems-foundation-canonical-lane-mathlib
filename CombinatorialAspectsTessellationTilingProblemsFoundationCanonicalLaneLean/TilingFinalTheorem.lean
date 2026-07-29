import CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean.TilingGateLemmas

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean

def ConstrainedTilingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_tiling_endgame (A : AdmissibleClass) :
    ConstrainedTilingClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean
end HautevilleHouse