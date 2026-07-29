import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean.TessellationDomain

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean

def ConstrainedTessellationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_tessellation_endgame (A : AdmissibleClass) : ConstrainedTessellationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean
end HautevilleHouse