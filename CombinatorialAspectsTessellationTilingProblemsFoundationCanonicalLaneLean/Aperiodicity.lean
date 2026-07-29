import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean

-- | Aperiodicity: no translational symmetry
structure AperiodicityPackage where
  tiling : Type u
  translationGroup : Type v
  invariantUnderTranslation : (tiling → tiling) → Prop
  noPeriodicity : Prop
  quasicrystalStructure : Prop

-- | Evidence that aperiodicity is closed (admissible)
structure AperiodicityEvidence (A : AperiodicityPackage) where
  noPeriodicityClosed : A.noPeriodicity
  quasicrystalStructureClosed : A.quasicrystalStructure

def AperiodicityClosed (A : AperiodicityPackage) : Prop :=
  A.noPeriodicity ∧ A.quasicrystalStructure

theorem aperiodicity_closed_from_evidence (A : AperiodicityPackage) (E : AperiodicityEvidence A) : AperiodicityClosed A := by
  exact And.intro E.noPeriodicityClosed E.quasicrystalStructureClosed

end CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean
end HautevilleHouse