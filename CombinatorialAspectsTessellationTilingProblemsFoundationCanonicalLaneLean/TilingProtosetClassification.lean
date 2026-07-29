import TilingTessellationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean

structure ProtosetClassificationPackage (A : AdmissibleClass) where
  protoset : Type u
  protosetCardinal : Nat
  classificationComplete : Prop
  correspondingPeriodicTiling : A.object.admitsTiling → classificationComplete

structure ProtosetClassificationEvidence {A : AdmissibleClass} (P : ProtosetClassificationPackage A) where
  classificationCompleteClosed : P.classificationComplete
  correspondenceClosed : P.correspondingPeriodicTiling (by
    intro h; exact h)

def ProtosetClassificationClosed {A : AdmissibleClass} (P : ProtosetClassificationPackage A) : Prop :=
  P.classificationComplete ∧ P.correspondingPeriodicTiling P.classificationComplete

theorem protoset_classification_closed_from_evidence {A : AdmissibleClass} (P : ProtosetClassificationPackage A) (E : ProtosetClassificationEvidence P) : ProtosetClassificationClosed P := by
  exact And.intro E.classificationCompleteClosed E.correspondenceClosed

end CombinatorialAspectsTessellationTilingProblemsFoundationCanonicalLaneLean
end HautevilleHouse