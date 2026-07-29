import TilingTessellationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean

structure PeriodicityPackage (A : AdmissibleClass) where
  lattice : Type u
  fundamentalDomain : Type v
  periodicityProof : Prop
  latticeDiscrete : Prop
  covolumeFinite : Prop

structure PeriodicityEvidence {A : AdmissibleClass} (P : PeriodicityPackage A) where
  periodicityProofClosed : P.periodicityProof
  latticeDiscreteClosed : P.latticeDiscrete
  covolumeFiniteClosed : P.covolumeFinite

def PeriodicityClosed {A : AdmissibleClass} (P : PeriodicityPackage A) : Prop :=
  P.periodicityProof ∧ P.latticeDiscrete ∧ P.covolumeFinite

theorem periodicity_closed_from_evidence {A : AdmissibleClass} (P : PeriodicityPackage A) (E : PeriodicityEvidence P) : PeriodicityClosed P := by
  exact And.intro E.periodicityProofClosed (And.intro E.latticeDiscreteClosed E.covolumeFiniteClosed)

end CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean
end HautevilleHouse