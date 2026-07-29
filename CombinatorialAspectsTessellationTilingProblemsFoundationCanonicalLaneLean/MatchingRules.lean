import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean

-- | Matching rules for tiling adjacency constraints
structure MatchingRulesPackage where
  tileTypes : Type u
  edgeColors : Type v
  colorAssignment : tileTypes → ℕ → edgeColors
  allowedAdjacencies : edgeColors → edgeColors → Prop
  ruleConsistent : Prop
  localConstraint : Prop
  globalConstraint : Prop

-- | Evidence that matching rules are closed (admissible)
structure MatchingRulesEvidence (M : MatchingRulesPackage) where
  ruleConsistentClosed : M.ruleConsistent
  localConstraintClosed : M.localConstraint
  globalConstraintClosed : M.globalConstraint

def MatchingRulesClosed (M : MatchingRulesPackage) : Prop :=
  M.ruleConsistent ∧ M.localConstraint ∧ M.globalConstraint

theorem matching_rules_closed_from_evidence (M : MatchingRulesPackage) (E : MatchingRulesEvidence M) : MatchingRulesClosed M := by
  exact And.intro E.ruleConsistentClosed (And.intro E.localConstraintClosed E.globalConstraintClosed)

end CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean
end HautevilleHouse