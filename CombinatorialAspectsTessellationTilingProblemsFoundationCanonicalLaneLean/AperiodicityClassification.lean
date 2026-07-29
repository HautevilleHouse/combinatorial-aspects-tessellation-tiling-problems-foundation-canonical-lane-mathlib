import CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean.LocalTilingStructure

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean

structure AperiodicityClassificationPackage {A : AdmissibleClass} (L : LocalTilingPackage A) where
  aperiodicCriteria : Prop
  periodicSubgroupTrivial : Prop
  forcingResult : Prop
  classificationTheorem : Prop

structure AperiodicityClassificationEvidence {A : AdmissibleClass} {L : LocalTilingPackage A}
    (C : AperiodicityClassificationPackage L) where
  aperiodicCriteriaClosed : C.aperiodicCriteria
  periodicSubgroupTrivialClosed : C.periodicSubgroupTrivial
  forcingResultClosed : C.forcingResult
  classificationTheoremClosed : C.classificationTheorem

def AperiodicityClassificationClosed {A : AdmissibleClass} {L : LocalTilingPackage A}
    (C : AperiodicityClassificationPackage L) : Prop :=
  C.aperiodicCriteria ∧ C.periodicSubgroupTrivial ∧ C.forcingResult ∧ C.classificationTheorem

theorem aperiodicity_classification_closed_from_evidence {A : AdmissibleClass}
    {L : LocalTilingPackage A} (C : AperiodicityClassificationPackage L)
    (E : AperiodicityClassificationEvidence C) : AperiodicityClassificationClosed C := by
  exact And.intro E.apenriodicCriteriaClosed (And.intro E.periodicSubgroupTrivialClosed (And.intro E.forcingResultClosed E.classificationTheoremClosed))

end CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean
end HautevilleHouse
